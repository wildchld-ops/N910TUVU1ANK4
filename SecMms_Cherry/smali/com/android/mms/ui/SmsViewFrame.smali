.class public Lcom/android/mms/ui/SmsViewFrame;
.super Landroid/widget/FrameLayout;
.source "SmsViewFrame.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;,
        Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_MMS_READ:Ljava/lang/String; = "com.android.MMS.intent.action.MMS_READ_NOTIFY"

.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_SMS_DATE:I = 0x4

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field private static final EXTRA_MSG_ID:Ljava/lang/String; = "message_id"

.field public static final MENU_COPY_TEXT:I = 0xd4

.field public static final MENU_FORWARD_MESSAGE:I = 0xd5

.field public static final MENU_OFFSET:I = 0xc8

.field public static final MENU_PREFERENCES:I = 0xd3

.field public static final MENU_SEARCH:I = 0xd0

.field public static final MENU_SPAM_MESSAGE:I = 0xd6

.field public static final MENU_TIMEDSEND:I = 0xd1

.field public static final MENU_VIEW_CONV:I = 0xd2

.field private static final NONE_TYPE:I = 0x0

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final SIM_NUM1:I = 0x1

.field private static final SIM_NUM2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/SmsViewFrame"

.field private static deleteDialog:Landroid/app/AlertDialog;

.field static mBackgroundQueryHandler:Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;


# instance fields
.field private final DEFAULT_FONT_SIZE_FOR_TEXT:F

.field private MY_DATA_CHECK_CODE:I

.field private bLongPress:Z

.field private bMultiTouch:Z

.field private endX:I

.field public isNotiMsg:Z

.field private isWapPush:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mDate:J

.field mDownloadButton:Landroid/widget/Button;

.field private mIntent:Landroid/content/Intent;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSmsBodyView:Landroid/widget/TextView;

.field private mTextSizeController:Lcom/android/mms/ui/TextSizeController;

.field private mTopView:Landroid/widget/FrameLayout;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private messageBodyInfo:Ljava/lang/String;

.field public msgId:J

.field private receivedTimeInfo:Ljava/lang/String;

.field private senderInfo:Ljava/lang/String;

.field private startX:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActionBar:Landroid/app/ActionBar;

    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewFrame$1;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xeea385

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewFrame$8;-><init>(Lcom/android/mms/ui/SmsViewFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActionBar:Landroid/app/ActionBar;

    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewFrame$1;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xeea385

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewFrame$8;-><init>(Lcom/android/mms/ui/SmsViewFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private LaunchTTS()V
    .locals 7

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_0

    const-string v1, "VOL"

    const-string v2, "vol up, mTts NULL"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    const-string v1, "VOL"

    const-string v2, "vol up, mTts stop"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->senderInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    const-string v1, "VOL"

    const-string v2, "vol up, mTts speak"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsViewFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsViewFrame;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsViewFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsViewFrame;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SmsViewFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsViewFrame;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SmsViewFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SmsViewFrame;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method private static confirmDeleteDialog(Landroid/content/Context;Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;Z)V
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f040048

    invoke-static {p0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    if-eqz p2, :cond_0

    const v4, 0x7f0c0079

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0076

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c007c

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    sget-object v4, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v4, 0x7f0c0078

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private drawMainTextView()V
    .locals 15

    const/4 v14, 0x1

    const/16 v13, 0x6a

    const/16 v12, 0x5a

    const/16 v11, 0xf

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c000f

    new-array v6, v14, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    invoke-static {v8, v9, v10, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    :cond_0
    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GATE"

    const-string v5, "<GATE-M>SMSTEXT:</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "CB#: "

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v13}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v13}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    return-void

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1, v12}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto/16 :goto_0

    :cond_6
    invoke-static {v1, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v1, v12}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto/16 :goto_1

    :cond_8
    invoke-static {v1, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v12}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_2
.end method

.method private drawNotiMsgTextView()V
    .locals 13

    const/16 v12, 0x6a

    const/16 v11, 0x62

    const/16 v10, 0x5a

    const/16 v9, 0xf

    const/4 v8, 0x7

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v5, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/SmsViewFrame;->getNotificationText(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    const/16 v5, 0x1000

    if-eq v4, v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, -0x6b

    invoke-static {v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v12}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    return-void

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, -0x5b

    invoke-static {v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto :goto_0

    :cond_3
    const/16 v4, -0x10

    invoke-static {v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto :goto_0

    :cond_5
    invoke-static {v3, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {v3, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v10}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v9}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_1
.end method

.method private drawTitle()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v5, "sms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms"

    invoke-static {v1}, Lcom/android/mms/ui/MessageItem;->constructProjection(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v0, 0x0

    if-nez v8, :cond_1

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "date"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    new-instance v10, Lcom/android/mms/ui/SmsViewFrame$5;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    invoke-direct {v10, p0, v1, v2, v3}, Lcom/android/mms/ui/SmsViewFrame$5;-><init>(Lcom/android/mms/ui/SmsViewFrame;IFZ)V

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v8}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_5

    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v9

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v0, v9

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v0, v9

    goto :goto_1
.end method

.method private getCachedMessageItemMmsNoti(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v1}, Lcom/android/mms/ui/MessageItem;->constructProjection(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v0, 0x0

    if-nez v8, :cond_1

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/mms/ui/SmsViewFrame$6;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    invoke-direct {v10, p0, v1, v2, v3}, Lcom/android/mms/ui/SmsViewFrame$6;-><init>(Lcom/android/mms/ui/SmsViewFrame;IFZ)V

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v8}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_4

    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v9

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v0, v9

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_4
    move-object v0, v9

    goto :goto_1
.end method

.method private getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11

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

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

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

    const/4 v8, 0x0

    if-nez v3, :cond_1

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    if-nez v3, :cond_4

    :cond_3
    :goto_1
    const/4 v1, 0x1

    if-ne v8, v1, :cond_6

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_1
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

    const/4 v8, 0x1

    :cond_5
    if-nez v3, :cond_2

    goto :goto_1

    :cond_6
    new-instance v10, Lcom/android/mms/ui/SmsViewFrame$7;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewFrame$7;-><init>(Lcom/android/mms/ui/SmsViewFrame;IFZ)V

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_a

    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_7

    :try_start_4
    iget-wide v1, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v9

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_a
    move-object v0, v9

    goto :goto_2
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getNotificationText(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    check-cast v5, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    const v8, 0x7f0c008c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v8

    const-wide/16 v10, 0x3ff

    add-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x200e

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v8, 0x7f0c0011

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v8, 0x7f0c0010

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    const/4 v13, 0x1

    invoke-static {p0, v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :catch_0
    move-exception v2

    const-string v8, "Mms/SmsViewFrame"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load the message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c007d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getOffsetX()F
    .locals 7

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getStatusBarHeight()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getActionBarHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {v4}, Lcom/android/mms/ui/ViewTitleHeader;->getHeight()I

    move-result v3

    add-int v4, v2, v0

    add-int/2addr v4, v3

    int-to-float v1, v4

    const-string v4, "Mms/SmsViewFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOffsetX() mStatusBarHeight("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),actionBarHeight("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),mViewTitleHeaderHeight("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),mOffsetX("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private initResourceRefs()V
    .locals 2

    const v1, 0x7f0b02bc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    :goto_0
    const v1, 0x7f0b038c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const v1, 0x7f0b038b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    return-void

    :cond_0
    const v1, 0x7f0b03bc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private initialize()V
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v0, "msgId"

    invoke-virtual {v8, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v0, "thread_id"

    invoke-virtual {v8, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->threadId:J

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    const-string v0, "isWapPush"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v0, v2, :cond_1

    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v2, "wpm"

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/mms/ui/SmsViewFrame;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v6, "sms"

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-ne v0, v2, :cond_2

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v2, "mms"

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/mms/ui/SmsViewFrame;->getCachedMessageItemMmsNoti(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v6, "mms"

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v2, "sms"

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/mms/ui/SmsViewFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v6, "sms"

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_1
.end method

.method private makeOutgoingCall(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private markAsRead()V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v2, v5, :cond_2

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewFrame$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewFrame$2;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-ne v2, v5, :cond_3

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewFrame$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewFrame$3;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewFrame$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewFrame$4;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SmsViewFrame"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSmsViewerBackground()V
    .locals 0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const-string v5, "Mms/SmsViewFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchTouchEvent() mSplitMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->getXpositon()I

    move-result v3

    sub-int v5, v4, v3

    if-lez v5, :cond_0

    int-to-float v5, v3

    sub-float v5, v10, v5

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->getOffsetX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v5, p0, Lcom/android/mms/ui/SmsViewFrame;->bMultiTouch:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    return v5

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {v5}, Lcom/android/mms/ui/ViewTitleHeader;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v10, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    :cond_2
    packed-switch v0, :pswitch_data_0

    const-string v5, "Mms/SmsViewFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchTouchEvent() default:action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v5, v0, 0xff

    const/4 v8, 0x5

    if-ne v5, v8, :cond_3

    iput-boolean v6, p0, Lcom/android/mms/ui/SmsViewFrame;->bMultiTouch:Z

    move v5, v7

    goto :goto_1

    :pswitch_0
    const-string v5, "Mms/SmsViewFrame"

    const-string v7, "dispatchTouchEvent() ACTION_MOVE"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :pswitch_1
    const-string v5, "Mms/SmsViewFrame"

    const-string v8, "dispatchTouchEvent() ACTION_UP"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/mms/ui/SmsViewFrame;->endX:I

    iput-boolean v7, p0, Lcom/android/mms/ui/SmsViewFrame;->bMultiTouch:Z

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v5, v6

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v5, v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public notifiyBindingNotiViewer()V
    .locals 5

    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0249

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :goto_0
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->notifyFolderViewerClose()V

    sget-object v2, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget v2, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lcom/android/mms/ui/SmsViewFrame;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->removeAllViews()V

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400aa

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTopView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->setSmsViewerBackground()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->senderInfo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0139

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->receivedTimeInfo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c013a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->messageBodyInfo:Ljava/lang/String;

    if-ne p3, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->initialize()V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->initResourceRefs()V

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinksClickable(Z)V

    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawNotiMsgTextView()V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawTitle()V

    new-instance v1, Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v1}, Lcom/android/mms/ui/TextSizeController;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/TextSizeController;->addTextViewToControl(Landroid/widget/TextView;)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/mms/ui/SmsViewFrame;->mBackgroundQueryHandler:Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->markAsRead()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInit(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->senderInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "VOL"

    const-string v1, "vol up, SUPER!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-string v1, "VOL"

    const-string v2, "vol up,"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->LaunchTTS()V

    const-string v1, "VOL"

    const-string v2, "vol up, LaunchTTS()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const-string v1, "VOL"

    const-string v2, "vol up, startTracking"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const-string v1, "VOL"

    const-string v2, "vol down, startTracking"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v3, 0x18

    if-ne p1, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    :cond_2
    const/16 v3, 0x19

    if-ne p1, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->markAsRead()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewFrame;->makeOutgoingCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsViewFrame;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->initialize()V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    const/16 v8, 0x1d

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    :pswitch_0
    return v5

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    const/4 v1, 0x0

    iget-boolean v6, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v6, v5, :cond_2

    const-wide/16 v3, 0x0

    :goto_1
    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    new-instance v2, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v6, v1}, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Z)V

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v2, v1}, Lcom/android/mms/ui/SmsViewFrame;->confirmDeleteDialog(Landroid/content/Context;Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-eqz v6, :cond_3

    const-string v6, "mms"

    iget-wide v7, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    iget-object v9, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-string v6, "sms"

    iget-wide v7, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    iget-object v9, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v3

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0014

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0xc8

    if-le v7, v8, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v5, v6

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->onSearchRequested()Z

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "conversationList"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-nez v0, :cond_0

    const/16 v0, 0xd4

    const v1, 0x7f0c0018

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ef

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xd0

    const v1, 0x104000c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/16 v0, 0xd2

    const v1, 0x7f0c0243

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020110

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xd3

    const v1, 0x7f0c0003

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0xb

    const/4 v5, 0x2

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/wap-push-messages/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v7}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-ne v2, v3, :cond_5

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v7}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawNotiMsgTextView()V

    goto :goto_0

    :cond_5
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v7}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Mms/SmsViewFrame"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public splitListChanged()V
    .locals 5

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_0
    return-void
.end method
