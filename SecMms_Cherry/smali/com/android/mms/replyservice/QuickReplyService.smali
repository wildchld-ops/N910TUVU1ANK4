.class public Lcom/android/mms/replyservice/QuickReplyService;
.super Lcom/android/mms/replyservice/MiniModeService;
.source "QuickReplyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;
    }
.end annotation


# static fields
.field private static final ANIMATION_BOTTOM_PANEL_DURATION:I = 0x1f4

.field private static final ANIMATION_PANEL_Y_END:F

.field private static final ANIMATION_PANEL_Y_START:F = 0.0f

.field private static final ANIMATION_POPUP_DURATION:I = 0x258

.field private static final ANIMATION_POPUP_Y_END:F = 0.0f

.field private static final ANIMATION_POPUP_Y_START:F

.field private static final COLUMN_INDEX_FREEMSG_FT_CONTENT_TYPE:I = 0x0

.field private static final COLUMN_INDEX_FREEMSG_FT_FILE_PATH:I = 0x2

.field private static final COLUMN_INDEX_FREEMSG_FT_THUMBNAIL_PATH:I = 0x1

.field private static final COLUMN_INDEX_MMS_SIMSLOT:I = 0x2

.field private static final COLUMN_INDEX_MMS_SUBJECT:I = 0x0

.field private static final COLUMN_INDEX_MMS_SUBJECT_CS:I = 0x1

.field private static final COLUMN_INDEX_SMS_BODY:I = 0x0

.field private static final COLUMN_INDEX_SMS_SIMSLOT:I = 0x1

.field private static final COLUMN_INDEX_WAP_BODY:I = 0x0

.field private static final COLUMN_INDEX_WAP_SIMSLOT:I = 0x1

.field private static final DELAYED_MESSAGE:I = 0x2

.field private static final DELAY_TIME_SHOW_SIP:I = 0xfa

.field private static final DIALOG_HEIGHT:I = 0xb0

.field private static final DIALOG_SCROLLVIEW_HEIGHT_PX:F

.field public static final DISMISS_POPUP:Ljava/lang/String; = "com.samsung.intent.action.dismiss"

.field public static final FIND_LOST_PHONE_ACTIVATE:Ljava/lang/String; = "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

.field private static final FREEMSG_CHAT_PROJECTION:[Ljava/lang/String;

.field private static final FREEMSG_FT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_PROJECTION_MULTISIM:[Ljava/lang/String;

.field private static final POPUP_BUTTON_PANEL_HEIGHT:I = 0x32

.field private static final PRIORITY_NORMAL:I = 0x1

.field public static final QUICK_REPLY_MESSAGE_ADDRESS:Ljava/lang/String; = "message_address"

.field public static final QUICK_REPLY_MESSAGE_ID_EXTRA:Ljava/lang/String; = "message_id"

.field public static final QUICK_REPLY_MESSAGE_TYPE_EXTRA:Ljava/lang/String; = "message_type"

.field public static final QUICK_REPLY_THREAD_ID_EXTRA:Ljava/lang/String; = "thread_id"

.field private static final SCROLLVIEW_HEIGHT:I = 0x33

.field private static final SMS_MAX_CHARS_GSM7BITS:I = 0xa0

.field private static final SMS_MAX_CHARS_UNICODE:I = 0x46

.field private static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_PROJECTION_MULTISIM:[Ljava/lang/String;

.field protected static final TAG:Ljava/lang/String; = "Mms/QuickReplyService"

.field private static final TOAST_TOP_MARGIN:I

.field public static final URI:[Ljava/lang/String;

.field private static final VIEW_BUTTON_LEFT_PADDING_IF_ALONE:I

.field private static final WMP_PROJECTION:[Ljava/lang/String;

.field private static final WMP_PROJECTION_MULTISIM:[Ljava/lang/String;

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field public static sQuickReplyRunning:Z


# instance fields
.field private mAttachmentBitmap:Landroid/graphics/Bitmap;

.field private mAvatarView:Landroid/widget/ImageView;

.field mBlockFlickUntilMillis:J

.field private mBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mButtonPanel:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCenterAnimator:Landroid/view/ViewPropertyAnimator;

.field private mComposerLayout:Landroid/widget/LinearLayout;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDivider1:Landroid/widget/ImageView;

.field private mDivider2:Landroid/widget/ImageView;

.field private mEditText:Landroid/widget/EditText;

.field private mEncodingType:I

.field private mFilePath:Ljava/lang/String;

.field private mFreeMsgFTImageView:Landroid/widget/ImageView;

.field mFreeMsgFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

.field private mIsButtonsGone:Z

.field private mMessageBodyView:Landroid/widget/TextView;

.field private mMessageSubjectView:Landroid/widget/TextView;

.field private mMessageType:I

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsImageView:Landroid/widget/ImageView;

.field private mMsgAddr:Ljava/lang/String;

.field private mMsgBody:Ljava/lang/String;

.field private mMsgId:J

.field private mMsgSimSlot:I

.field private mMsgSubject:Ljava/lang/String;

.field private mMsgType:I

.field private mNegButton:Landroid/widget/Button;

.field private mOffset:F

.field private mPopupBottom:Landroid/view/View;

.field private mPopupCenter:Landroid/view/View;

.field private mPopupTop:Landroid/view/View;

.field private mPosButton:Landroid/widget/Button;

.field private mRcsFtContentUri:Landroid/net/Uri;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipientList:Lcom/android/mms/data/ContactList;

.field private mRecipientView:Landroid/widget/TextView;

.field private mRecipients:Ljava/lang/String;

.field private mReplyButton:Landroid/widget/Button;

.field private mReplyButtonListener:Landroid/view/View$OnClickListener;

.field private mReplyClicked:Z

.field private mReplyPopup:Landroid/view/View;

.field private mSendButton:Landroid/widget/Button;

.field private mTextLimitToast:Landroid/widget/Toast;

.field private mThreadId:J

.field private mThumbNailPath:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private misChatMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->SMS_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sub"

    aput-object v1, v0, v2

    const-string v1, "sub_cs"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->MMS_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->WMP_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    const-string v1, "message_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->FREEMSG_CHAT_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "content_type"

    aput-object v1, v0, v2

    const-string v1, "thumbnail_path"

    aput-object v1, v0, v3

    const-string v1, "file_path"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->FREEMSG_FT_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    const-string v1, "sim_slot"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->SMS_PROJECTION_MULTISIM:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sub"

    aput-object v1, v0, v2

    const-string v1, "sub_cs"

    aput-object v1, v0, v3

    const-string v1, "sim_slot"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->MMS_PROJECTION_MULTISIM:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    const-string v1, "sim_slot"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->WMP_PROJECTION_MULTISIM:[Ljava/lang/String;

    const/high16 v0, 0x43300000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_POPUP_Y_START:F

    const/high16 v0, 0x42480000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_PANEL_Y_END:F

    const/high16 v0, 0x424c0000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F

    const/high16 v0, 0x43080000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->VIEW_BUTTON_LEFT_PADDING_IF_ALONE:I

    const/high16 v0, 0x41100000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->TOAST_TOP_MARGIN:I

    sput-boolean v2, Lcom/android/mms/replyservice/QuickReplyService;->sQuickReplyRunning:Z

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "wap-push-messages"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "directDisplayMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;-><init>()V

    iput-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    iput v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    iput-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    iput v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSimSlot:I

    iput v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageType:I

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    iput-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBlockFlickUntilMillis:J

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    iput-boolean v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    iput-boolean v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mIsButtonsGone:Z

    iput-boolean v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->misChatMode:Z

    new-instance v0, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;-><init>(Lcom/android/mms/replyservice/QuickReplyService;Lcom/android/mms/replyservice/QuickReplyService$1;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/replyservice/QuickReplyService$5;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/QuickReplyService$5;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/replyservice/QuickReplyService$6;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/QuickReplyService$6;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/replyservice/QuickReplyService;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/replyservice/QuickReplyService;)J
    .locals 2
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-wide v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/mms/replyservice/QuickReplyService;J)J
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/mms/replyservice/QuickReplyService;)J
    .locals 2
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->getDelayedDeliveryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/mms/replyservice/QuickReplyService;)Z
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-boolean v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->misChatMode:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/replyservice/QuickReplyService;)I
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSimSlot:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/replyservice/QuickReplyService;Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/replyservice/QuickReplyService;)V
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->sendMarkAsReadIntent()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/ContactList;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/replyservice/QuickReplyService;Landroid/content/Context;)V
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->launchMessage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/View;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # Landroid/view/View;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/mms/replyservice/QuickReplyService;->setPopupSlideAnimation(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/mms/replyservice/QuickReplyService;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/replyservice/QuickReplyService;I)V
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->showSipDelayed(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/replyservice/QuickReplyService;)F
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/replyservice/QuickReplyService;F)F
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # F

    iput p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    return p1
.end method

.method static synthetic access$2400()F
    .locals 1

    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # Landroid/view/ViewPropertyAnimator;

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # Landroid/view/ViewPropertyAnimator;

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3100()F
    .locals 1

    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_PANEL_Y_END:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/replyservice/QuickReplyService;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->showExceedTextLimitToast(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/replyservice/QuickReplyService;)I
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEncodingType:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/replyservice/QuickReplyService;I)I
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEncodingType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/replyservice/QuickReplyService;)V
    .locals 0
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->showInputModeToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/Conversation;
    .locals 1
    .param p0    # Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method private static addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Intent;

    const/high16 v0, 0x34000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "noti"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method private getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/android/mms/data/ContactList;

    const/4 v4, 0x1

    const-string v2, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0c0100

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "Unknown address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0c013b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "Verizon Global Support"

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDelayedDeliveryTime()J
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getDelaySendingLength(Landroid/content/Context;)I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v3, v0

    return-wide v3
.end method

.method private static getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0    # Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "Mms/QuickReplyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImage OOM occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Mms/QuickReplyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p1    # Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getMmsUri(J)Landroid/net/Uri;
    .locals 2
    .param p1    # J

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getMsgUribyType(I)Ljava/lang/String;
    .locals 4
    .param p1    # I

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v0, v1, v2

    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v0, v1, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-ne p1, v3, :cond_3

    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method private static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/mms/replyservice/QuickReplyService;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    :cond_0
    sget-object v0, Lcom/android/mms/replyservice/QuickReplyService;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    return-object v1
.end method

.method private getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I
    .locals 8
    .param p1    # Lcom/android/mms/model/SlideshowModel;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_6
    add-int v0, v2, v4

    move v6, v0

    goto :goto_0
.end method

.method private static getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private initQuickReplyInfos(Landroid/content/Context;JIJ)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # J
    .param p4    # I
    .param p5    # J

    const-string v0, "Mms/QuickReplyService"

    const-string v2, "initQuickReplyInfos()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPosButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mIsButtonsGone:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/replyservice/QuickReplyService;->setButtonsGone(Z)V

    :cond_1
    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->SMS_PROJECTION_MULTISIM:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSimSlot:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const/4 v0, 0x7

    if-eq p4, v0, :cond_4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->misChatMode:Z

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    const v2, 0x7f0202f4

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    const v2, 0x7f0c04d5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    if-nez p4, :cond_a

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->MMS_PROJECTION_MULTISIM:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v7, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSimSlot:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->MMS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_a
    const/4 v0, 0x2

    if-ne p4, v0, :cond_d

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "wap-push-messages"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->WMP_PROJECTION_MULTISIM:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_3

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSimSlot:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->WMP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_d
    const/4 v0, 0x7

    if-ne p4, v0, :cond_f

    sget-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->FREEMSG_CHAT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    const-string v0, "message_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_f
    const/16 v0, 0x8

    if-ne p4, v0, :cond_3

    const v0, 0x7f0c041f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->FREEMSG_FT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContentType:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThumbNailPath:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mFilePath:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_10
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isCBMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "CBmessages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private launchMessage(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private parsingPdu(Landroid/content/Context;J)V
    .locals 24
    .param p1    # Landroid/content/Context;
    .param p2    # J

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/replyservice/QuickReplyService;->getMmsUri(J)Landroid/net/Uri;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/android/mms/replyservice/QuickReplyService;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v13

    if-eqz v13, :cond_8

    instance-of v0, v13, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    check-cast v13, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/mms/replyservice/QuickReplyService;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    const-string v17, "<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0015

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v6}, Lcom/android/mms/replyservice/QuickReplyService;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/replyservice/QuickReplyService;->getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I

    move-result v4

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    if-nez v8, :cond_3

    if-nez v4, :cond_3

    :cond_1
    :goto_0
    if-nez v8, :cond_7

    move-object v8, v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    const v17, 0x7f0c041f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v4, v0, :cond_1

    const v17, 0x7f0c019f

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_5
    add-int/lit8 v17, v4, -0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const v17, 0x7f0c041d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_6
    add-int/lit8 v17, v4, -0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const v17, 0x7f0c041e

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int/lit8 v20, v4, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_8
    if-eqz v13, :cond_2

    instance-of v0, v13, Lcom/google/android/mms/pdu/NotificationInd;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object v0, v13

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v9, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0c008c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit16 v0, v9, 0x3ff

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x200e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0c0011

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v17, 0x7f0c0010

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    const-string v17, "<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0015

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v5

    const-string v17, "Mms/QuickReplyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MmsException parsingPdu e = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f0c000c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private sendMarkAsReadIntent()V
    .locals 8

    const/4 v7, 0x1

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    new-array v3, v7, [I

    const/4 v5, 0x0

    long-to-int v6, v1

    aput v6, v3, v5

    sget-object v5, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v4, v5, v7

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_1

    const-string v5, "Mms/QuickReplyService"

    const-string v6, "Invalid msgId"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    invoke-direct {p0, v5}, Lcom/android/mms/replyservice/QuickReplyService;->getMsgUribyType(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "Mms/QuickReplyService"

    const-string v6, "sendMarkAsReadIntent()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "NOTIFICATION_PACKAGE_NAME"

    const-string v6, "com.android.mms"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v5, "NOTIFICATION_ITEM_URI"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-nez v5, :cond_2

    const-string v5, "CHECK_READ_REPORT"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setButtonsGone(Z)V
    .locals 5
    .param p1    # Z

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPosButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider1:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider2:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mNegButton:Landroid/widget/Button;

    sget v4, Lcom/android/mms/replyservice/QuickReplyService;->VIEW_BUTTON_LEFT_PADDING_IF_ALONE:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    iput-boolean p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mIsButtonsGone:Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mNegButton:Landroid/widget/Button;

    invoke-virtual {v3, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method private setDialogBackground(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupTop:Landroid/view/View;

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private setPopupSlideAnimation(Landroid/view/View;Z)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move v1, v0

    :goto_0
    if-eqz p2, :cond_0

    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_POPUP_Y_START:F

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x258

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p2, :cond_1

    new-instance v3, Lcom/android/mms/replyservice/QuickReplyService$7;

    invoke-direct {v3, p0}, Lcom/android/mms/replyservice/QuickReplyService$7;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void

    :cond_2
    sget v1, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_POPUP_Y_START:F

    goto :goto_0
.end method

.method private setQuickReplyInfo()V
    .locals 8

    const v7, 0x7f0c013b

    const/4 v6, 0x1

    const/16 v5, 0x8

    const-string v2, "Mms/QuickReplyService"

    const-string v3, "setQuickReplyInfo()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->updateAvatarView()V

    iget v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/replyservice/QuickReplyService;->parsingPdu(Landroid/content/Context;J)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/replyservice/QuickReplyService;->isCBMessage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/replyservice/QuickReplyService;->isValidAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/mms/replyservice/QuickReplyService;->setButtonsGone(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mFreeMsgFTImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0c041f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageType:I

    const/16 v3, 0x69

    if-lt v2, v3, :cond_6

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->setStickerView()V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-ne v2, v6, :cond_7

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setStickerView()V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020072

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "Mms/QuickReplyService"

    const-string v4, "OutOfMemoryError caught @ BitmapFactory.decodeResource"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showExceedTextLimitToast(Z)V
    .locals 8
    .param p1    # Z

    const v7, 0x7f0c0490

    const v6, 0x7f0c0148

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x46

    :goto_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LGU+"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    :cond_1
    const-string v2, "LGU+"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const/16 v1, 0xa0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showInputModeToast()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0494

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x30

    sget v4, Lcom/android/mms/replyservice/QuickReplyService;->TOAST_TOP_MARGIN:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/QuickReplyService"

    const-string v3, "showInputModeToast(): ClassCastException, Unable to align to center"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSipDelayed(I)V
    .locals 4
    .param p1    # I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/replyservice/QuickReplyService$8;

    invoke-direct {v1, p0}, Lcom/android/mms/replyservice/QuickReplyService$8;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateAvatarView()V
    .locals 8

    const v7, 0x7f02027d

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CBmessages"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02027c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v4, "Pushmessage"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020287

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02027e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02027f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFromRecvNoti"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected initCustomLayout()V
    .locals 4

    const-string v2, "Mms/QuickReplyService"

    const-string v3, "initCustomLayout()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b0215

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPosButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b0216

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mNegButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b027e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b0280

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b0292

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mFreeMsgFTImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b027b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAvatarView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b0179

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupTop:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v3, 0x7f0b02e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/mms/replyservice/QuickReplyService;->setDialogBackground(Z)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "LGU+"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    const-string v3, "disableEmoticonInput=true"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/replyservice/QuickReplyService$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/replyservice/QuickReplyService$1;-><init>(Lcom/android/mms/replyservice/QuickReplyService;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/replyservice/QuickReplyService$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/replyservice/QuickReplyService$2;-><init>(Lcom/android/mms/replyservice/QuickReplyService;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPosButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/replyservice/QuickReplyService$3;

    invoke-direct {v3, p0}, Lcom/android/mms/replyservice/QuickReplyService$3;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mNegButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/replyservice/QuickReplyService$4;

    invoke-direct {v3, p0}, Lcom/android/mms/replyservice/QuickReplyService$4;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1    # Landroid/content/res/Configuration;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/android/mms/replyservice/MiniModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    iget v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void

    :cond_5
    iput v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/android/mms/replyservice/MiniModeService;->onCreate()V

    const-string v0, "Mms/QuickReplyService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    const v1, 0x7f040085

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/replyservice/MiniModeService;->setContentView(IIIII)V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getMainView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/replyservice/QuickReplyService;->initCustomLayout()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/replyservice/QuickReplyService;->sQuickReplyRunning:Z

    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.dismiss"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/mms/replyservice/MiniModeService;->onDestroy()V

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/replyservice/QuickReplyService;->sQuickReplyRunning:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "mReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const/4 v8, 0x0

    const/4 v0, 0x2

    const-wide/16 v5, 0x0

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "onStartCommand()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "intent is null so return!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    if-nez v1, :cond_0

    const-string v1, "thread_id"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    const-string v1, "message_type"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    const-string v1, "message_id"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    const-string v1, "message_address"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    const-string v1, "Mms/QuickReplyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mThreadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMsgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-static {p0, v1, v2, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    :cond_2
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_4

    :cond_3
    const-string v1, "Mms/QuickReplyService"

    const-string v2, "invalid intent extras"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    iget v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    iget-wide v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/replyservice/QuickReplyService;->initQuickReplyInfos(Landroid/content/Context;JIJ)V

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->setQuickReplyInfo()V

    invoke-static {}, Lcom/android/mms/accessory/ReadReportActivity;->getInstance()Lcom/android/mms/accessory/ReadReportActivity;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/mms/accessory/ReadReportActivity;->requestToDismissDialog()V

    const-string v0, "Mms/QuickReplyService"

    const-string v1, "requestToDismissDialog"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/replyservice/MiniModeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public sendChat(Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_SEND"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v10, "extra_receivers_list"

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v10, "extra_chat_msg"

    invoke-virtual {v2, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "extra_session_id"

    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "extra_msg_id"

    invoke-virtual {v2, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v10, "extra_msg_type"

    invoke-virtual {v2, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "extra_thread_id"

    invoke-virtual {v2, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "extra_chat_type"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    iget-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    const-string v10, "extra_chat_type"

    invoke-virtual {v2, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method
