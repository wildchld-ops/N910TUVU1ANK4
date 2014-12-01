.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_SENDING_SMS:Ljava/lang/String; = "android.intent.action.SENDING_SMS"

.field public static final APPLICATION:I = 0xb

.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field public static final AUDIO:I = 0x3

.field private static final CID_TEXT_:Ljava/lang/String; = "cid:text_"

.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final DELAYED_MESSAGE:I = 0x2

.field public static final EMAIL:I = -0x1

.field public static final EMOJI_REQUIRES_MMS:I = 0x80

.field public static final EXCEED_MAX_SLIDE_NUM:I = -0x6

.field public static final EXCEED_MAX_TEXT_COUNT:I = -0x7

.field public static final EXTRA_SMS_MESSAGE:Ljava/lang/String; = "android.mms.extra.MESSAGE"

.field public static final EXTRA_SMS_RECIPIENTS:Ljava/lang/String; = "android.mms.extra.RECIPIENTS"

.field public static final EXTRA_SMS_THREAD_ID:Ljava/lang/String; = "android.mms.extra.THREAD_ID"

.field public static final FORCE_MMS:I = 0x20

.field private static final FREECHAT_DRAFT_PROJECTION:[Ljava/lang/String;

.field public static final HAS_ATTACHMENT:I = 0x4

.field public static final HAS_SUBJECT:I = 0x2

.field public static final IMAGE:I = 0x1

.field public static final IMAGE_ROTATED:I = -0x8

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final INTEGRATED_DRAFT_BODY_INDEX:I = 0x1

.field private static final INTEGRATED_DRAFT_DATE_INDEX:I = 0x2

.field private static final INTEGRATED_DRAFT_PRIORITY_INDEX:I = 0x4

.field private static final INTEGRATED_DRAFT_RESERVED_INDEX:I = 0x3

.field private static final INTEGRATED_DRAFT_TRANSPORT_TYPE:I = 0x0

.field private static final LENGTH_REQUIRES_MMS:I = 0x8

.field public static final LOCATION_VCARD:I = 0xa

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final MMS_DATE_INDEX:I = 0x4

.field private static final MMS_DELIVERY_REPORT:I = 0x6

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_ID_INDEX:I = 0x0

.field private static final MMS_MESSAGE_SIZE_INDEX:I = 0x1

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final MMS_PRIORITY:I = 0x5

.field private static final MMS_READ_REPORT:I = 0x7

.field private static final MMS_RESERVED_INDEX:I = 0x3

.field private static final MMS_SUBJECT_CS_INDEX:I = 0x2

.field public static final MMS_SUBJECT_DEFAULT_LIMIT_COUNT_ON_EMPTY_SUBJECT:I = 0xd

.field private static final MMS_SUBJECT_INDEX:I = 0x1

.field public static final MULTIPLE_RECIPIENTS:I = 0x40

.field public static final OK:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final RAW:I = 0x5

.field private static final RECIPIENTS_REQUIRE_MMS:I = 0x1

.field private static final REPLY_ALL_MULTIPLE_RECIPIENTS:I = 0x10

.field public static final SCHEDULED_MESSAGE:I = 0x1

.field public static final SLIDESHOW:I = 0x4

.field private static final SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final SMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final SMS_DRAFT_WHERE:Ljava/lang/String; = "type=3"

.field public static final TAG:Ljava/lang/String; = "Mms/WorkingMessage"

.field public static final TEXT:I = 0x0

.field private static final TEXT_EXT:Ljava/lang/String; = ".txt"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field public static final VCAL:I = 0x7

.field public static final VCARD:I = 0x6

.field public static final VIDEO:I = 0x2

.field public static final VNOTE:I = 0x8

.field public static final VTODO:I = 0x9

.field public static mForceMmsState:Z

.field private static mSignatureText:Ljava/lang/CharSequence;

.field private static sMmsEnabled:Z

.field private static final sPreOpenedFilesDummy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public static splitMmsOnGoing:I


# instance fields
.field private DEBUG_LOG:Z

.field public isFreeMessageRecipientOnly:Ljava/lang/Boolean;

.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDataGroupChatFtFromNewComposer:Landroid/content/Intent;

.field private mDelayedDeliveryTime:J

.field private mDiscarded:Z

.field public mExitOnSent:Z

.field private mFloatingMsgId:Ljava/lang/String;

.field public mFreeMessageState:I

.field private mHandler:Landroid/os/Handler;

.field private mIsIntMsg:Z

.field private mIsReqestChat:Z

.field private mIsReqestMessage:Z

.field private mIsSignatureAdded:Z

.field private mMaxEmailLen:I

.field private mMessageDeliveryReport:Z

.field private mMessageReadReport:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field private mMyLocation:Ljava/lang/String;

.field public mNewSlide:I

.field private mPriorityLevel:I

.field private mPriorityValue:I

.field private mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

.field private mRecipients:Ljava/lang/String;

.field private mReserveDeliveryTime:J

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mStickerView:Landroid/view/View;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:[Ljava/lang/CharSequence;

.field private mWorkingRecipients:Lcom/android/mms/data/ContactList;

.field public mapFreeMessageRecipientCaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private misDefaultSMS:Z

.field private participantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "m_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const-string v1, "reserved"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "reserved"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "pri"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "reserved"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->FREECHAT_DRAFT_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    sput v3, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V
    .locals 6

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    iput-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    iput-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mDelayedDeliveryTime:J

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMyLocation:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->isFreeMessageRecipientOnly:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mIsReqestMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mIsReqestChat:Z

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mIsIntMsg:Z

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->misDefaultSMS:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    iput-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mDelayedDeliveryTime:J

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->isFreeMessageRecipientOnly:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->participantsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/mms/rcs/RcsChatManager;

    invoke-direct {v0, p1}, Lcom/android/mms/rcs/RcsChatManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;IZ)Landroid/net/Uri;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftFreeChatMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;IZ)Landroid/net/Uri;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/rcs/RcsChatManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->deleteDuplicateMmsDraft(JZ)V

    return-void
.end method

.method private addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "oldMedia is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addressContainEmail(Lcom/android/mms/data/Conversation;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p2, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    aget v8, v4, v7

    if-le v8, v6, :cond_3

    invoke-direct {p0, v6, v6, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    :goto_2
    return v6

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v8, v0, v1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    goto :goto_1

    :cond_2
    aget v8, v4, v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v9

    if-lt v8, v9, :cond_3

    invoke-direct {p0, v6, v6, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_2
.end method

.method private appendMedia(IILandroid/net/Uri;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    const/4 v4, 0x0

    const/4 v6, 0x5

    if-ne p2, v6, :cond_2

    new-instance v3, Lcom/android/mms/model/AttachmentModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v3}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeMedia type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v1, v6, p3, v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    move-object v2, v1

    if-eqz p4, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    :goto_1
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->checkExtension()V

    :cond_3
    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    const/4 v6, 0x2

    if-eq p2, v6, :cond_4

    const/4 v6, 0x3

    if-ne p2, v6, :cond_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    goto :goto_1

    :pswitch_1
    new-instance v5, Lcom/android/mms/model/VideoModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v5, v6, p3, v7}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    move-object v2, v5

    if-eqz p4, :cond_6

    invoke-virtual {v5}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v2, v0

    if-eqz p4, :cond_7

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDelete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$12;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncDeleteDraftMmsMessage(J)V
    .locals 4

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private asyncSendChat(Lcom/android/mms/data/Conversation;)V
    .locals 4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$6;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    const-string v3, "send_chat"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V
    .locals 7

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$4;

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;ILjava/lang/String;ZLcom/android/mms/data/Conversation;)V

    const-string v1, "send_chat"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncSendFT(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    const-string v2, "send_chat"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncSendMms(Lcom/android/mms/data/Conversation;I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMessageUri = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v2, :cond_4

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSubjectConcept4Korea()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v16, ""

    const/16 v17, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v17

    :cond_0
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\n"

    const-string v3, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v2, 0xd

    if-le v13, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFwEmoji()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xc

    const/16 v3, 0xe

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/ui/EmoticonList;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :cond_1
    :goto_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x80

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x80

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_4
    new-instance v18, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$3;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;IZI)V

    const-string v3, "send_mms"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    const/16 v3, 0xd

    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    const/16 v3, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    goto :goto_1

    :cond_7
    const/16 v2, 0x81

    :try_start_3
    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v12

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "The sendReq setting for delivery/read report error"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_8
    const/16 v2, 0x81

    :try_start_4
    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    goto :goto_3

    :cond_9
    const/16 v2, 0x81

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_4

    :cond_a
    const/16 v2, 0x81

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_4
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private asyncSendSms(Lcom/android/mms/data/Conversation;I)V
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/GreekInputHandler;->MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    move-object v3, v6

    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$1;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V

    const-string v1, "send_sms"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private asyncSendSms(Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V
    .locals 8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/mms/ui/GreekInputHandler;->MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v3, p2

    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$2;

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V

    const-string v1, "send_sms"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncUpdateDraftFreeChatMessage(),conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$10;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$10;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;ZLjava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 10

    const-string v7, "Mms/WorkingMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "asyncUpdateDraftMmsMessage conv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMessageUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v7}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_0

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    :cond_0
    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v7, :cond_3

    const/16 v7, 0x80

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v7, :cond_5

    const/16 v7, 0x80

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    :cond_2
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/mms/data/WorkingMessage$8;

    invoke-direct {v8, p0, p1, v3, v4}, Lcom/android/mms/data/WorkingMessage$8;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    const/16 v7, 0x81

    :try_start_1
    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "Mms/WorkingMessage"

    const-string v8, "The sendReq setting for delivery/read report error"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/16 v7, 0x81

    :try_start_2
    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    goto :goto_0

    :cond_5
    const/16 v7, 0x81

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_1

    :cond_6
    const/16 v7, 0x81

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$11;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$11;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;ZLjava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V
    .locals 7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    if-le v5, v6, :cond_2

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private changeMedia(IILandroid/net/Uri;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    if-gtz v8, :cond_3

    :cond_2
    const-string v8, "Mms"

    const-string v9, "[WorkingMessage] changeMedia: no slides!"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v8, 0x5

    if-ne p2, v8, :cond_5

    new-instance v5, Lcom/android/mms/model/AttachmentModel;

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8, v5}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeMedia type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_0
    new-instance v2, Lcom/android/mms/model/ImageModel;

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v2, v8, p3, v9}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    move-object v3, v2

    if-eqz p4, :cond_6

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    :cond_6
    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    :goto_2
    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_1

    const/4 v4, 0x0

    :goto_3
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->checkExtension()V

    :cond_7
    invoke-virtual {v6, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v8, 0x2

    if-eq p2, v8, :cond_8

    const/4 v8, 0x3

    if-ne p2, v8, :cond_4

    :cond_8
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_1

    :pswitch_1
    new-instance v7, Lcom/android/mms/model/VideoModel;

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v7, v8, p3, v9}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    move-object v3, v7

    if-eqz p4, :cond_9

    invoke-virtual {v7}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    :cond_9
    invoke-virtual {v7}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v3, v0

    if-eqz p4, :cond_a

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    :cond_a
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    :cond_b
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    :cond_c
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    :cond_d
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    :cond_e
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v4

    :cond_f
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    goto/16 :goto_3

    :catch_0
    move-exception v1

    invoke-direct {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    new-instance v8, Lcom/android/mms/UnsupportContentTypeException;

    const-string v9, "UnsupportContentTypeException"

    invoke-direct {v8, v9}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_1
    move-exception v1

    invoke-direct {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    new-instance v8, Lcom/android/mms/ExceedMessageSizeException;

    const-string v9, "ExceedMessageSizeException"

    invoke-direct {v8, v9}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_2
    move-exception v1

    invoke-direct {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    new-instance v8, Lcom/android/mms/ResolutionException;

    const-string v9, "ResolutionException"

    invoke-direct {v8, v9}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_3
    move-exception v1

    invoke-direct {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    new-instance v8, Lcom/android/mms/RotationException;

    const-string v9, "RotationException"

    invoke-direct {v8, v9}, Lcom/android/mms/RotationException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_4
    move-exception v1

    invoke-direct {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    new-instance v8, Lcom/android/mms/ContentRestrictionException;

    const-string v9, "ContentRestrictionException"

    invoke-direct {v8, v9}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private checkMediaFileName(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2e

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changed file name changed, len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method private static closePreOpenedFiles(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;
    .locals 10

    const/4 v9, 0x0

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "createDraftMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    move-object v8, v9

    :goto_0
    return-object v8

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {p3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    sget-object v5, Lcom/android/mms/data/WorkingMessage;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p2, v7}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v8, v9

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v8, v9

    goto :goto_0
.end method

.method public static createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;
    .locals 3

    const-string v1, "Mms/WorkingMessage"

    const-string v2, "createEmpty()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDraftSmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteDuplicateMmsDraft(JZ)V
    .locals 9

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "invalid threadId. just return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v8, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v8, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v8, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
    .locals 6

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMmsMessage(),uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/data/WorkingMessage$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$13;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    if-eqz p5, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private dumpWorkingRecipients()V
    .locals 5

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "-- mWorkingRecipients:"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "Mms/WorkingMessage"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private ensureSlideshow()V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method private static hasId(Landroid/net/Uri;)Z
    .locals 6

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hasMmsContentToSave()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 6

    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    invoke-direct {v1, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZ)Lcom/android/mms/data/WorkingMessage;
    .locals 6

    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load with CRMode : moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    invoke-direct {v1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2

    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadDraftDelete(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Z
    .locals 2

    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromConversation(),conv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftFreeAndSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v1, v2}, Lcom/android/mms/data/WorkingMessage;->readPriorityMms(Landroid/content/Context;J)V

    :cond_4
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v3}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method private loadFromDraftUri(Landroid/net/Uri;)Z
    .locals 31

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFromDraftUri(),mDraftUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, ""

    const-string v23, ""

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/4 v15, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v30, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "body"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "reserved"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "address"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "svc_cmd"

    aput-object v3, v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "type=3"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    const/16 v17, 0x0

    if-eqz v15, :cond_1

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v17, 0x1

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v17, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v8, 0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    :goto_0
    if-nez v23, :cond_5

    const-string v23, ""

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    new-instance v19, Lcom/android/mms/data/ContactList;

    invoke-direct/range {v19 .. v19}, Lcom/android/mms/data/ContactList;-><init>()V

    const-string v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v18

    :cond_2
    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v20, v18

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    aget-object v2, v20, v18

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->reload()V

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    goto :goto_0

    :cond_5
    const-string v2, "["

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    const-string v2, "]"

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    :cond_6
    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    and-int/lit8 v2, v27, 0x1

    if-lez v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    :cond_8
    and-int/lit8 v2, v27, 0x2

    if-lez v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "type=3"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_4
    return v2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_d

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v15, v2, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_b

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_15

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x7

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_18

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    if-eqz v15, :cond_e

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_10

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_19

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_10
    :goto_8
    if-eqz v15, :cond_11

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v30, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1d

    const-wide v28, 0x7ffffffffffffffeL

    const-wide/16 v21, 0x0

    :try_start_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v21

    :goto_9
    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v21, v2

    if-nez v2, :cond_12

    const-string v23, ""

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    new-instance v19, Lcom/android/mms/data/ContactList;

    invoke-direct/range {v19 .. v19}, Lcom/android/mms/data/ContactList;-><init>()V

    const-string v2, ";"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v18, 0x0

    :goto_a
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1c

    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v18

    :cond_13
    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    aget-object v2, v20, v18

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    aget-object v2, v20, v18

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->reload()V

    :goto_b
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    :cond_15
    const-wide/16 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    if-eqz v15, :cond_16

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v2

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_19
    const/4 v2, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_8

    :catchall_2
    move-exception v2

    if-eqz v15, :cond_1a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v2

    :cond_1b
    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    goto :goto_b

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    :cond_1d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_1e
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    goto/16 :goto_9
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "Couldn\'t load URI %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;ZZ)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromUri with CRMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2, p3}, Lcom/android/mms/model/SlideshowModel;->createFromPduBodyForForward(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v7

    if-le v6, v7, :cond_0

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v7, 0x7f0c002e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromUri(), Toast: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    invoke-virtual {p0, v5}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string v6, "Couldn\'t load URI %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v6, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    goto :goto_0
.end method

.method public static loadMultiDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 2

    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromDraftUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    goto :goto_0
.end method

.method private makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    const-string v4, "Mms/WorkingMessage"

    const-string v5, "conversation is null!!!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    :goto_0
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    if-ne v4, v8, :cond_7

    const/16 v4, 0x81

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-object v3

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_0

    const-string v4, "NGM:makeSendReq:encodedNumbers"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v4, v2

    if-eq v4, v8, :cond_5

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v4

    if-ne v4, v8, :cond_6

    :cond_5
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through To field"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v4, "NGM"

    const-string v5, "Multiple Recipients .... Group Message false.. Set BCC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through BCC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/16 v4, 0x82

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static normalizeMmsPartFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x5f

    move-object v2, p0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7e

    if-le v0, v3, :cond_1

    :cond_0
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRemoveFileNameSpace()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v5, v10, v11, v13, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    move/from16 v12, p4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v5

    const/4 v10, 0x1

    if-gt v5, v10, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_2
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_3

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/mms/util/TelephonyUtils;->getPriorSimSlotToUse(I)I

    move-result v12

    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v5, v10, v13

    if-lez v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_4
    const/4 v11, 0x1

    move-object/from16 v5, p2

    move/from16 v10, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JZZIII)J

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v2, v3, v10}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v2

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    goto/16 :goto_0

    :cond_a
    const-string v5, "Mms/WorkingMessage"

    const-string v10, "preSendSmsWorker Handler is null"

    invoke-static {v5, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/4 v12, 0x0

    goto :goto_2

    :cond_c
    const/4 v11, 0x1

    move-object/from16 v5, p2

    move/from16 v10, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JZZII)J

    goto :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v5, v10, v13

    if-lez v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "Mms/WorkingMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reservationManager.setFloatingMsgId+++++++++++"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/mms/transaction/ReservationManager;->setFloatingMsgId(Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_f
    const/4 v11, 0x2

    move-object/from16 v5, p2

    move/from16 v10, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JZZIII)J

    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_4

    :cond_11
    const/4 v11, 0x2

    move-object/from16 v5, p2

    move/from16 v10, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JZZII)J

    goto :goto_5

    :cond_12
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object v15, v4

    move-wide/from16 v16, v2

    move/from16 v18, p3

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, p4

    invoke-direct/range {v13 .. v21}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JIZZI)V

    goto/16 :goto_4
.end method

.method private prepareForSave(ZZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->hasMmsContentToSave()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/mms/data/WorkingMessage;->syncCallbackNumberToSlideshow(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeAttachmentIfEmpty(Z)V

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeLengthMMSIfNotOver(Z)V

    :cond_2
    return-void
.end method

.method private readDraftFreeAndSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 21

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v17

    const-string v3, "Mms/WorkingMessage"

    const-string v4, "readDraftSmsMessage()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-gtz v3, :cond_1

    const-string v10, ""

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "integrated-draft"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v10, ""

    const-string v19, ""

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v3, 0x6

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "transport_type"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "body"

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v6, v3

    const/4 v3, 0x3

    const-string v4, "reserved"

    aput-object v4, v6, v3

    const/4 v3, 0x4

    const-string v4, "pri"

    aput-object v4, v6, v3

    const/4 v3, 0x5

    const-string v4, "type "

    aput-object v4, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const/4 v13, 0x0

    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v3, "sms"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v13, 0x1

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v13, :cond_7

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_7

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    :goto_1
    if-eqz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->requiresRcs()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "sms"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;Z)V

    :cond_5
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->requiresRcs()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {v17 .. v18}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Mms/WorkingMessage"

    const-string v4, "readDraftSmsMessage calling clearThreadId"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_7
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    goto :goto_1

    :cond_8
    const/4 v14, 0x1

    goto :goto_2

    :cond_9
    const-string v3, "im"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Z)V

    goto :goto_3

    :cond_a
    const/4 v14, 0x1

    goto :goto_4
.end method

.method private readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 10

    const/4 v5, 0x0

    const-string v0, "Mms/WorkingMessage"

    const-string v2, "readDraftMmsMessage()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v7, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_5

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    :cond_3
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v2}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v5, v9

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private readPriorityMms(Landroid/content/Context;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string v0, "Mms:app"

    invoke-static {v0, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "readCallBackNumberFromMms tid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    const/16 v2, 0x82

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private removeAttachmentIfEmpty(Z)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    return-void
.end method

.method private removeLengthMMSIfNotOver(Z)V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getMaxLengthEmailAdress(Lcom/android/mms/data/ContactList;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS(I)Z

    move-result v1

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v1

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private sendChatWithInitChat(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const/4 v1, 0x0

    const-string v2, "fakeSessionID"

    const-wide/16 v4, -0x1

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8, v2}, Lcom/android/mms/data/Conversation;->setSessionId(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_6

    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_INIT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v8, "extra_receivers_list"

    invoke-virtual {v3, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v8, "extra_thread_id"

    invoke-virtual {v3, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v8, "extra_msg_id"

    invoke-virtual {v3, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v8, "extra_chat_msg"

    if-eqz p4, :cond_4

    :goto_0
    invoke-virtual {v3, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "extra_phone_number"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "extra_session_id"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "extra_msg_type"

    invoke-virtual {v3, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-lez p3, :cond_2

    const-string v8, "extra_media_type"

    invoke-virtual {v3, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    if-eqz p6, :cond_3

    const-string v8, "extra_shop_content_id_list"

    move-object/from16 v0, p6

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_5

    const-string v8, "extra_chat_type"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    return-void

    :cond_4
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_5
    const-string v8, "extra_chat_type"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v9, "requestSessionID: senderMSISDN is null !!"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private sendChatWithInitChat(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v0, 0x0

    const-string v1, "fakeSessionID"

    const-wide/16 v3, -0x1

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7, v1}, Lcom/android/mms/data/Conversation;->setSessionId(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_INIT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "extra_receivers_list"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v7, "extra_thread_id"

    invoke-virtual {v2, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "extra_msg_id"

    invoke-virtual {v2, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "extra_phone_number"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "extra_session_id"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "extra_file_path"

    invoke-virtual {v2, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const-string v7, "extra_chat_type"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_2
    const-string v7, "extra_chat_type"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "requestSessionID: senderMSISDN is null !!"

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZI)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v4, "SNDM"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/16 v33, 0x0

    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long v33, v33, v3

    goto :goto_0

    :cond_0
    cmp-long v3, v33, v24

    if-ltz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v31

    :goto_2
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/mms/model/SlideModel;

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/mms/model/MediaModel;

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->normalizeMmsPartFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->checkMediaFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v3

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v31

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v31

    goto :goto_2

    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->normalizeMmsPartFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/mms/model/AttachmentModel;->setSrc(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-nez p2, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p7, :cond_a

    invoke-static/range {p2 .. p2}, Lcom/android/mms/data/WorkingMessage;->hasId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "text_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v4, v5, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Message;->sendToTarget()V

    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_c
    const/4 v3, 0x2

    move/from16 v0, p8

    if-ne v0, v3, :cond_d

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getPriorSimSlotToUse(I)I

    move-result p8

    :cond_d
    :goto_8
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMmsWorker sendSimSlot= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-lez v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_e
    const-wide/16 v3, 0x3e8

    div-long v3, v18, v3

    const-wide/16 v9, 0x3e8

    mul-long v11, v3, v9

    const/4 v13, 0x1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    move/from16 v14, p8

    invoke-virtual/range {v7 .. v14}, Lcom/android/mms/transaction/ReservationManager;->addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JII)J

    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0, v5, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_a
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v31

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_10
    invoke-static/range {p2 .. p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto/16 :goto_6

    :cond_11
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "sendMmsWorker Handler is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    const/16 p8, 0x0

    goto/16 :goto_8

    :cond_13
    const-wide/16 v3, 0x3e8

    div-long v3, v18, v3

    const-wide/16 v9, 0x3e8

    mul-long v11, v3, v9

    const/4 v13, 0x1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/mms/transaction/ReservationManager;->addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JI)J

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->syncDeleteDraftMmsMessage(J)V

    goto :goto_a

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-lez v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const-wide/16 v3, 0x3e8

    div-long v3, v18, v3

    const-wide/16 v9, 0x3e8

    mul-long v11, v3, v9

    const/4 v13, 0x2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    move/from16 v14, p8

    invoke-virtual/range {v7 .. v14}, Lcom/android/mms/transaction/ReservationManager;->addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JII)J

    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0, v5, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_d
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v31

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_b

    :cond_17
    const-wide/16 v3, 0x3e8

    div-long v3, v18, v3

    const-wide/16 v9, 0x3e8

    mul-long v11, v3, v9

    const/4 v13, 0x2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/mms/transaction/ReservationManager;->addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JI)J

    goto :goto_c

    :cond_18
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->syncDeleteDraftMmsMessage(J)V

    goto :goto_d

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    :cond_1a
    :try_start_1
    new-instance v8, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v11, v3

    move-object/from16 v10, p2

    move/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1b

    move/from16 v0, p8

    invoke-interface {v8, v0}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-interface {v8, v3}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    :cond_1c
    move-wide/from16 v0, v31

    invoke-interface {v8, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0, v5, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1d
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v31

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v31

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    :cond_1e
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v31

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_b

    :catch_0
    move-exception v20

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JIZZI)V
    .locals 10

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v4, "SNDS"

    invoke-static {v2, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, ";"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v2, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSmsWorker() sendSimSlot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object v4, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v0, p8

    invoke-interface {v1, v0}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPriorityLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-interface {v1, v2}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v9, 0x0

    if-eqz p6, :cond_2

    or-int/lit8 v9, v9, 0x1

    :cond_2
    if-eqz p7, :cond_3

    or-int/lit8 v9, v9, 0x2

    :cond_3
    move-object v2, v1

    check-cast v2, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v4}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send message, setmsgid in workingmessage+++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/android/mms/transaction/SmsMessageSender;

    move-object v2, v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/mms/transaction/SmsMessageSender;->setFloatingMsgId(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v1, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Mms/WorkingMessage"

    const-string v4, "send SMS message, reset msgidworkingmessage"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    :cond_6
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p3, p4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v8

    const-string v2, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send SMS message, threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 5

    const/4 v2, 0x0

    const-string v1, "Mms/WorkingMessage"

    const-string v3, "setText()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object p2, v1, p1

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "<none>"

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    const-string v1, "REPLY_ALL_MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_6

    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_7

    const-string v1, "MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_8

    const-string v1, "EMOJI_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "Temp_NGM"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncCallbackNumberToSlideshow(Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v4, "CB#:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v4, "CB#:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private syncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private syncDeleteDraftMmsMessage(J)V
    .locals 5

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private syncTextFromSlideshow()V
    .locals 8

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v1

    if-le v5, v1, :cond_1

    move v2, v1

    move v3, v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v5

    move v3, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method private syncTextToSlideshow()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v2

    if-le v5, v2, :cond_4

    move v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    new-instance v6, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private syncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncUpdateDraftFreeChatMessage(),conv="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-virtual {p1, v6}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v1

    invoke-virtual {p1, v6}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    if-eqz p3, :cond_2

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->updateDraftFreeChatMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->updateDraftFreeChatMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    goto :goto_1
.end method

.method private syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
    .locals 24

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncUpdateDraftMmsMessage conv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMessageUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v20

    const-wide/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v13

    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-eqz v2, :cond_0

    const-wide/16 v21, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    :cond_0
    invoke-virtual/range {v20 .. v22}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x80

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x80

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->deleteDuplicateMmsDraft(JZ)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;Z)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    :cond_6
    return-void

    :cond_7
    const/16 v2, 0x81

    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "The sendReq setting for delivery/read report error"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_8
    const/16 v2, 0x81

    :try_start_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x81

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x81

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v17, v0

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "m_size"

    aput-object v3, v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "m_size"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v12, :cond_f

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    if-nez p2, :cond_4

    :try_start_4
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto/16 :goto_3
.end method

.method private syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v1

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    if-eqz p3, :cond_4

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    goto :goto_2
.end method

.method private updateDraftFreeChatMessage(JLjava/lang/String;IZ)Landroid/net/Uri;
    .locals 16

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftFreeChatMessage tid=xxxxxx, contents=xxxxxx"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->formatNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pri"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v9

    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-eqz v2, :cond_3

    const-wide/16 v12, 0x1

    const-string v2, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v2, "reserved"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v2, :cond_4

    or-int/lit8 v14, v14, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v2, :cond_5

    or-int/lit8 v14, v14, 0x2

    :cond_5
    const-string v2, "svc_cmd"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string v2, "thread_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "body"

    move-object/from16 v0, p3

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p5, :cond_7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    :goto_1
    if-lez v8, :cond_8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_3
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMultiDraftSmsMessage() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    throw v2

    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    goto/16 :goto_0
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 5

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDraftMmsMessage uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null uri"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null sendReq"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null slideshow"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    :try_start_1
    sget-object v2, Lcom/android/mms/data/WorkingMessage;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;
    .locals 16

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftSmsMessage tid=xxxxxx, contents=xxxxxx"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->formatNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "thread_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "body"

    move-object/from16 v0, p3

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pri"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v9

    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-eqz v2, :cond_5

    const-wide/16 v12, 0x1

    const-string v2, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    const-string v2, "reserved"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v2, :cond_6

    or-int/lit8 v14, v14, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v2, :cond_7

    or-int/lit8 v14, v14, 0x2

    :cond_7
    const-string v2, "svc_cmd"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p5, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    :goto_1
    if-lez v8, :cond_a

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_3
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMultiDraftSmsMessage() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    throw v2

    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct/range {p0 .. p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V
    .locals 8

    const/4 v0, 0x1

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "threads"

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "reply_all"

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$9;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState(IZZ)V
    .locals 7

    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz p2, :cond_8

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x21

    if-lez v0, :cond_2

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :cond_3
    if-ne p1, v4, :cond_4

    if-eqz p2, :cond_4

    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    :cond_4
    if-eqz p3, :cond_5

    if-nez v6, :cond_9

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_7
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_a

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v5, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "-"

    goto :goto_3
.end method


# virtual methods
.method public SendFreeFileTransferWorker(Landroid/content/Context;Lcom/android/mms/data/Conversation;Lcom/android/mms/data/ContactList;Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/data/Conversation;",
            "Lcom/android/mms/data/ContactList;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v1, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v1, v4, v6}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v13, 0x3

    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-static {v1, v4, v6, v7, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Mms/WorkingMessage"

    const-string v4, "preSendSmsWorker Handler is null"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isNeededRequestInitChat()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v1, v0}, Lcom/android/mms/data/WorkingMessage;->sendChatWithInitChat(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    :cond_5
    return-void

    :cond_6
    if-eqz v3, :cond_3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/data/WorkingMessage;->sendFileTansfer([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;J)V

    goto :goto_3
.end method

.method public SendFreeMessageWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;ILjava/util/ArrayList;Z)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/data/Conversation;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    const/4 v12, 0x0

    if-lez p3, :cond_0

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v32, 0x3

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v6, v7, v10, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v6

    const-wide/16 v17, 0x0

    cmp-long v3, v6, v17

    if-lez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v12, v3, :cond_7

    move-object/from16 v5, p2

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v11, 0x1

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/mms/transaction/ReservationManager;->addChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)J

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v3, v6, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    :cond_4
    return-void

    :cond_5
    const/16 v32, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v3, "Mms/WorkingMessage"

    const-string v6, "preSendSmsWorker Handler is null"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v6

    const-wide/16 v17, 0x0

    cmp-long v3, v6, v17

    if-lez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v12, v3, :cond_a

    move-object/from16 v5, p2

    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v11, 0x2

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/mms/transaction/ReservationManager;->addChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)J

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v16

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    const/16 v28, 0x0

    :goto_5
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_d

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    :cond_d
    invoke-static/range {v30 .. v30}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v14, ""

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v14, p2

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isNeededRequestInitChat()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v15

    move-object/from16 v10, p0

    move/from16 v13, p3

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Lcom/android/mms/data/WorkingMessage;->sendChatWithInitChat(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_f
    if-eqz v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v24

    move-object/from16 v15, p0

    move-object/from16 v17, v11

    move-object/from16 v18, v14

    move/from16 v20, v12

    move/from16 v23, p3

    move-object/from16 v25, p4

    move/from16 v26, p5

    invoke-virtual/range {v15 .. v26}, Lcom/android/mms/data/WorkingMessage;->sendChat([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IJIZLjava/util/ArrayList;Z)V

    goto/16 :goto_3
.end method

.method public SendRcsWorker(Lcom/android/mms/data/Conversation;)V
    .locals 19

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Mms/WorkingMessage"

    const-string v4, "SendRcsWorker(final Conversation)"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v4, v5, v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-lez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v9, "display_delivery"

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Lcom/android/mms/transaction/ReservationManager;->addChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)J

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_0

    :cond_5
    const-string v2, "Mms/WorkingMessage"

    const-string v4, "preSendSmsWorker Handler is null"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-lez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getDelayedDeliveryTime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v9, "display_delivery"

    const/4 v10, 0x2

    invoke-virtual/range {v1 .. v10}, Lcom/android/mms/transaction/ReservationManager;->addChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)J

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    move-result v16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v3

    invoke-static/range {v9 .. v14}, Lcom/android/mms/rcs/RcsChatManager;->startChatSendService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    new-instance v9, Lcom/android/mms/rcs/RcsOperationsManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Lcom/android/mms/rcs/RcsOperationsManager;-><init>(Landroid/content/Context;)V

    move/from16 v0, v16

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/rcs/RcsOperationsManager;->insertSentMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v9}, Lcom/android/mms/rcs/RcsOperationsManager;->closeProvider()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "display_delivery"

    move/from16 v0, v16

    invoke-static {v4, v5, v6, v0}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2
.end method

.method public addFreeMessageRecipientCapsValue(Ljava/lang/String;Z)V
    .locals 6

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    :goto_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRecipientCapsStateForFreeMesage()Ljava/lang/Boolean;

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addFreeMessageRecipientCapsValue()  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")] >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public addSlide(I)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addSlide(),slideIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v5, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :cond_2
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ge v3, p1, :cond_3

    const-string v3, "Mms/WorkingMessage"

    const-string v5, "inside mSlideshow.size()<slideIndex"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v3, v4

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1, v1}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method public addWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 8

    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    new-instance v6, Lcom/android/mms/data/ContactList;

    invoke-direct {v6}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/ContactList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public asyncDeleteDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Z)V
    .locals 7

    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asyncDeleteDraftFreeChatMessage(), isAsync="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    const-string v0, "type = ? AND thread_id = ? "

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/mms/data/WorkingMessage;->syncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;Z)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asyncDeleteDraftSmsMessage(), isAsync="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    invoke-direct {p0, v2, v3, v5}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    invoke-direct {p0, v2, v3, v5}, Lcom/android/mms/data/WorkingMessage;->syncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public asyncSendLocation(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$7;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    const-string v2, "send_chat"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public callasyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->asyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V

    return-void
.end method

.method public callasyncSendFT(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->asyncSendFT(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkIfAddressContainsEmailToMms(Ljava/util/List;Ljava/lang/CharSequence;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    const/4 v2, 0x0

    if-nez p1, :cond_5

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    move v6, v5

    :goto_0
    return v6

    :cond_1
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p2, v11, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    :goto_3
    iget v9, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v9, v10, :cond_7

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_8

    invoke-direct {p0, v10, v10, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    :cond_4
    :goto_4
    move v6, v5

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p2, v11, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-direct {p0, v10, v11, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_4
.end method

.method public checkMaxSlide(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cloneWorkingMessage_ForSplitMmsSend(Lcom/android/mms/data/WorkingMessage;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    return-void
.end method

.method public correctAttachmentState(Z)V
    .locals 12

    const/4 v4, 0x5

    const/4 v11, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    :cond_0
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctAttachmentState(), Toast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v6, v1, v7}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    invoke-direct {p0, v11, v0, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    return-void

    :cond_4
    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    :cond_5
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_6

    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_6
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    :cond_7
    if-le v9, v3, :cond_8

    iput v11, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_9

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_c

    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    :cond_d
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_e
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    :cond_f
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v0

    if-eq v0, v3, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_10
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_11
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method protected createPendingSmsMessage(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    const-string v1, ";"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPendingSmsMessage sendSimSlot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p5}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_0
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p3, p4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    return-void

    :catch_0
    move-exception v7

    const-string v1, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save SMS message to pending, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public deleteAnonymousDraftSmsMessage()V
    .locals 10

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "asyncDeleteDraftMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "address is NULL"

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v4, "address is NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const-string v0, "hys"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v9, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public declared-synchronized discard()V
    .locals 6

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "discard()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v0, v2, :cond_2

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "already discarded"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    invoke-static {}, Lcom/android/mms/widget/MmsWidgetProvider;->getWidgetCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/android/mms/widget/MmsWidgetProvider;->getCurrentWidget()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmsWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const-string v2, "msg_box=3"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Z)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public dump()V
    .locals 3

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "WorkingMessage:"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->dumpWorkingRecipients()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public expectedMessageSize()Ljava/lang/String;
    .locals 18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v14}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v14

    add-int/2addr v7, v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_1

    add-int/lit8 v7, v7, 0x7d

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v7, v14

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v14}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v14}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v7, v14

    goto :goto_1

    :cond_5
    const/16 v6, 0x36

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v14}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v12

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v14, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    add-int v14, v6, v2

    add-int/lit8 v14, v14, 0x28

    add-int/2addr v7, v14

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    add-int v14, v6, v2

    add-int/lit8 v14, v14, 0x28

    add-int/2addr v7, v14

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    add-int v14, v6, v2

    add-int/lit8 v14, v14, 0x1c

    add-int/2addr v7, v14

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v14}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v14

    if-lez v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v14}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v7, v14

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_a

    add-int/lit16 v7, v7, 0x11a

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    if-nez v7, :cond_b

    const-string v14, "%d "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0011

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_b
    add-int/lit16 v14, v7, 0x3ff

    div-int/lit16 v7, v14, 0x400

    if-nez v7, :cond_c

    const-string v14, "%d "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    const-string v14, "%d "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public fileSendRcsWorker(Landroid/content/Context;Lcom/android/mms/data/ContactList;Ljava/util/ArrayList;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/data/ContactList;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->isRcsGroupChatMode(Z)Z

    move-result v9

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/rcs/RcsChatManager;->startFtSendService(Landroid/content/Context;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->groupChatattachFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/data/Contact;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez v11, :cond_9

    :cond_8
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "Null or empty telephone number!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/mms/rcs/RcsChatManager;->generateImsUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v11, v6}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->attachFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_a
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "Handler is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getAttachmentType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    return v0
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getDataGroupChatFtFromNewComposer()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mDataGroupChatFtFromNewComposer:Landroid/content/Intent;

    return-object v0
.end method

.method public getDelayedDeliveryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mDelayedDeliveryTime:J

    return-wide v0
.end method

.method public getFreeMessageRecipientCapsValue(Ljava/lang/String;)J
    .locals 4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreeMessageRecipientCapsValue() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")] >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getFreeMessageState()I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    return v0
.end method

.method public getIntegratedThreadsInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_INTEGRATED_THREADS:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v9, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    const-string v0, "only_for_query"

    const-string v1, "true"

    invoke-virtual {v9, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    return-object v8
.end method

.method public getMaxEmailLen()I
    .locals 2

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "IS41 Email : getMaxEmailLen"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    return v0
.end method

.method public getMessageDeliveryReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    return v0
.end method

.method public getMessageReadReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    return v0
.end method

.method public getRawAttachmentsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    goto :goto_0
.end method

.method public getRawAttachmentsNameList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    return-object v0
.end method

.method public getRcsState()J
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsChatManager;->getRcsState()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getRecipientCapsStateForFreeMesage()Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessageMapCapsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->isFreeMessageRecipientOnly:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Mms/WorkingMessage"

    const-string v6, "getRecipientCapsStateForFreeMesage() 1 recipient is same with OWN number"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->isFreeMessageRecipientOnly:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v1, 0x0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_3

    const-string v5, "Mms/WorkingMessage"

    const-string v6, "getRecipientCapsStateForFreeMesage() some recipient value is off(0) cannot use chatmode"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->isFreeMessageRecipientOnly:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "getRecipientCapsStateForFreeMesage() all recipients value are on(1) can use chatmode"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->isFreeMessageRecipientOnly:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public getRecipients()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    return-object v0
.end method

.method public getReserveDeliveryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    return-wide v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getStickerViewFromNewComposer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStickerView:Landroid/view/View;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTextLengthFromAllSlide(I)I
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    return v2
.end method

.method public getTransportType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/android/mms/data/WorkingMessage;->getIntegratedThreadsInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "transport_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public getWorkingMessageUri()Landroid/net/Uri;
    .locals 3

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWorkingMessageUri : return ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWorkingRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

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

.method public hasOnlySignatureText()Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public hasSlideMedia()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubjectField()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAbleToUseNewworkForFreeMessage()Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    return v3
.end method

.method public isAddPossible(ILcom/android/mms/model/SlideModel;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public isClosedGroupChat()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChatClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isEmptyGroupMessage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupChatMode()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isGroupChatMode(J)Z
    .locals 2

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncludeOWNnumber()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLengthRequiresMMS()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    if-ne v0, v3, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    aget v5, v2, v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v6

    if-lt v5, v6, :cond_5

    :goto_1
    return v3

    :cond_2
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public isLengthRequiresMMS(I)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    if-eqz v7, :cond_1

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    if-ne v0, v5, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    if-lez p1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    :goto_0
    new-array v3, v10, [I

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    move-object v2, v3

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    if-lez p1, :cond_d

    if-eqz v2, :cond_c

    aget v7, v2, v6

    if-le v7, v5, :cond_c

    :cond_2
    :goto_2
    return v5

    :cond_3
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    :cond_5
    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    if-lez p1, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    :goto_3
    new-array v3, v10, [I

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    move-object v2, v3

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    goto :goto_3

    :cond_7
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    if-lez p1, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    :goto_4
    new-array v3, v10, [I

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    move-object v2, v3

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    goto :goto_4

    :cond_a
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto/16 :goto_1

    :cond_b
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v2

    goto/16 :goto_1

    :cond_c
    move v5, v6

    goto/16 :goto_2

    :cond_d
    if-eqz v2, :cond_e

    aget v7, v2, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v8

    if-ge v7, v8, :cond_2

    :cond_e
    move v5, v6

    goto/16 :goto_2
.end method

.method public isMmsExceededSizewhenPastedText(ILjava/lang/CharSequence;)Z
    .locals 11

    const/4 v6, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    const/4 v1, 0x0

    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, p2, v6}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    if-le v7, v8, :cond_3

    :goto_2
    return v6

    :cond_1
    const-string p2, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isMmsStateMultipleRecipient()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingSizeOver(Landroid/content/Context;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v8, v0

    const-wide/16 v10, 0x0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-long/2addr v10, v0

    goto :goto_0

    :cond_0
    cmp-long v0, v10, v8

    if-ltz v0, :cond_3

    const v0, 0x7f0c00e7

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v12

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isRcsGroupChatMode(Z)Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    invoke-virtual {v0, p1}, Lcom/android/mms/rcs/RcsChatManager;->isGroupChatMode(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isReqestChat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsReqestChat:Z

    return v0
.end method

.method public isReqestMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsReqestMessage:Z

    return v0
.end method

.method public isSignatureAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    return v0
.end method

.method public isWorthSaving()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public loadFromUri_onlySlideshowModel(Landroid/net/Uri;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "loadFromUri %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    invoke-virtual {p0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "Couldn\'t load URI %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0
.end method

.method public loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    const-string v1, "Mms/WorkingMessage"

    const-string v2, "loadRecipients()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public mmsMessageSize()I
    .locals 12

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v11

    add-int/2addr v5, v11

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_1

    add-int/lit8 v5, v5, 0x7d

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v5, v11

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v5, v11

    goto :goto_1

    :cond_3
    const/16 v4, 0x36

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_7

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int v11, v4, v1

    add-int/lit8 v11, v11, 0x28

    add-int/2addr v5, v11

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int v11, v4, v1

    add-int/lit8 v11, v11, 0x28

    add-int/2addr v5, v11

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int v11, v4, v1

    add-int/lit8 v11, v11, 0x1c

    add-int/2addr v5, v11

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v11

    if-lez v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v5, v11

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_8

    add-int/lit16 v5, v5, 0x11a

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return v5
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    goto :goto_0

    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method public recipienHasEmail()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFakeMmsForDraft(Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public removeFreeMessageRecipientCapsValue(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRecipientCapsStateForFreeMesage()Ljava/lang/Boolean;

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFreeMessageRecipientCapsValue()  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")] >> removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeRecipient(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, p1}, Lcom/android/mms/data/Conversation;->removeRecipient(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRecipient(), ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->updateFreeMessageState()V

    :cond_1
    return v0
.end method

.method public removeSlide(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSlide(),slideIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    return v3

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFwEmoji()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmojiSupportMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/android/mms/ui/EmoticonList;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public requiresFreeMessage()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getImType()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v1, :cond_1

    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getImType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isReqestChat()Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isReqestMessage()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    if-lez v3, :cond_6

    move v0, v1

    :goto_1
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requiresFreeMessage ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public requiresMms()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresRcs()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsChatManager;->requiresRcs()Z

    move-result v0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAsMms(),notify="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,mConversation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v5, :cond_0

    const-string v5, "Mms/WorkingMessage"

    const-string v6, "saveAsMms() IllegalStateException : saveAsMms() called after discard()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v5, :cond_1

    :goto_0
    return-object v4

    :cond_1
    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    invoke-direct {p0, v8, v8, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    :goto_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4, v5}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :goto_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v8}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v8}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4, v0, v5, v2}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_2
.end method

.method public saveDraft(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->saveDraft(ZZ)Z

    move-result v0

    return v0
.end method

.method public saveDraft(ZZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v5, 0x0

    const-string v6, "Mms/WorkingMessage"

    const-string v7, "saveDraft()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-boolean v6, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v6, :cond_0

    const-string v6, "Mms/WorkingMessage"

    const-string v7, "saveDraft(),mDiscarded=true"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v6, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "saveDraft() called with no conversation"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v5, p1, v6}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v6

    if-eqz v6, :cond_5

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v4}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    :cond_2
    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v11}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v5, v2

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    throw v5

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_6
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_b

    const-string v6, "Mms/WorkingMessage"

    const-string v7, "save draft for free message"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v5

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v6, :cond_8

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, v1, v11}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v6, :cond_a

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, v1, v11}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v5

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0015

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    if-eqz p2, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v6, :cond_e

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, v0, v11}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v6, v0, v5}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v6, :cond_10

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, v0, v11}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_10
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v6, v0, v5}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    goto/16 :goto_2
.end method

.method public saveDraftSync(Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x0

    const-string v1, "Mms/WorkingMessage"

    const-string v3, "saveDraftSync()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/WorkingMessage"

    const-string v3, "saveDraftSync(),mDiscarded=true"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "saveDraftSync() called with no conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0, p1, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mms"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    const/4 v8, 0x1

    :cond_2
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/update_thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v11}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v0, v8

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0, v11}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0, v6, v11}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    const/4 v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "UnsupportedOperationException in update_thread!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "Exception is occurred in update_thread!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    const/4 v8, 0x1

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0015

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method public saveSmsToPending()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->saveSmsToPending(I)V

    return-void
.end method

.method public saveSmsToPending(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSmsToPending sendSimSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {p0, v5, v6, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<subject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/data/WorkingMessage$14;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage$14;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    iput-boolean v6, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->send(I)V

    return-void
.end method

.method public send(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    const-string v9, "Mms/WorkingMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send() with simSlot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackEnabled(Landroid/content/SharedPreferences;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v0, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v8, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresRcs()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsState()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_4
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v9, p1}, Lcom/android/mms/data/WorkingMessage;->asyncSendMms(Lcom/android/mms/data/Conversation;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mMyLocation:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v9}, Lcom/android/mms/data/WorkingMessage;->addressContainEmail(Lcom/android/mms/data/Conversation;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mMyLocation:Ljava/lang/String;

    invoke-direct {p0, v9, v10, p1}, Lcom/android/mms/data/WorkingMessage;->asyncSendSms(Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V

    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    const/4 v3, 0x1

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v3, :cond_7

    const-string v9, "com.android.mms.festival.FestivalUtils"

    invoke-static {v9}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v9, "isFestivalKeyword"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/content/ContentResolver;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v1, v9, v10}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v2, v10}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v9, "Mms/WorkingMessage"

    const-string v10, "send()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v0, ""

    :goto_5
    goto/16 :goto_0

    :cond_9
    move-object v0, v4

    goto :goto_5

    :cond_a
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x3

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresRcs()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v9}, Lcom/android/mms/data/WorkingMessage;->asyncSendChat(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/mms/data/WorkingMessage;->asyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    :cond_e
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v9, p1}, Lcom/android/mms/data/WorkingMessage;->asyncSendSms(Lcom/android/mms/data/Conversation;I)V

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method public sendChat([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IJIZLjava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJIZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "extra_phone_number"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_receivers_list"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "extra_chat_msg"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_session_id"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_msg_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "extra_msg_type"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "extra_thread_id"

    invoke-virtual {v1, v4, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "extra_message_lock"

    move/from16 v0, p11

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-lez p8, :cond_0

    const-string v4, "extra_media_type"

    invoke-virtual {v1, v4, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-eqz p10, :cond_1

    const-string v4, "extra_shop_content_id_list"

    move-object/from16 v0, p10

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    if-eqz p9, :cond_2

    const-string v4, "extra_chat_type"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_2
    const-string v4, "extra_chat_type"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public sendFileTansfer([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-static {v3}, Lcom/android/mms/freemessage/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_SEND"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v12, "extra_phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "extra_receivers_list"

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v12, "extra_file_path"

    invoke-virtual {v7, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "extra_file_size"

    invoke-virtual {v7, v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "extra_content_type"

    invoke-virtual {v7, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "extra_session_id"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "extra_msg_id"

    invoke-virtual {v7, v12, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "extra_msg_type"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "extra_thread_id"

    iget-object v13, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v13

    invoke-virtual {v7, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "sticker"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    const-string v12, "extra_chat_type"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_3
    const-string v12, "extra_chat_type"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    .locals 8

    if-nez p4, :cond_1

    const/4 v3, -0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    const/4 v5, 0x1

    if-ne p3, v5, :cond_3

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/picasa/item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, -0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    if-eqz p5, :cond_4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {p0, p3, v5}, Lcom/android/mms/data/WorkingMessage;->isAddPossible(ILcom/android/mms/model/SlideModel;)Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 p2, p2, 0x1

    new-instance v4, Lcom/android/mms/model/SlideModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v4, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2, v4}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/android/mms/data/WorkingMessage;->checkMaxSlide(II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v2, 0x0

    :cond_5
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v3, -0x6

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, -0x2

    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v3, -0x6

    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-le v1, p2, :cond_7

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v6, ""

    aput-object v6, v5, p2

    :cond_8
    iput p2, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    if-eqz p5, :cond_c

    :try_start_1
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/mms/data/WorkingMessage;->appendMedia(IILandroid/net/Uri;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/android/mms/RotationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_9

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_9

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_9
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_a
    :goto_3
    if-nez v3, :cond_0

    const/4 v5, 0x5

    if-eq p3, v5, :cond_b

    iput p3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    :cond_b
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    if-nez p7, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5, p3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged(I)V

    goto/16 :goto_0

    :cond_c
    :try_start_2
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/mms/data/WorkingMessage;->changeMedia(IILandroid/net/Uri;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/android/mms/RotationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v3, -0x1

    :try_start_3
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_d
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v3, -0x1

    :try_start_4
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_e

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_e

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_e
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_3

    :catch_4
    move-exception v0

    const/4 v3, -0x1

    :try_start_5
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_f

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_f

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_f
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    :catch_5
    move-exception v0

    const/4 v3, -0x3

    :try_start_6
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_10

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_10

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_10
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    :catch_6
    move-exception v0

    const/4 v3, -0x2

    :try_start_7
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_11

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_11

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_11
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    :catch_7
    move-exception v0

    const/4 v3, -0x4

    :try_start_8
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_12

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_12

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_12
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    :catch_8
    move-exception v0

    const/4 v3, -0x8

    :try_start_9
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_13

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_13

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_13
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const/4 v3, -0x5

    :try_start_a
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v5, -0x1

    if-le p2, v5, :cond_14

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_14

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_14
    const/4 v2, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_16

    if-eqz v2, :cond_16

    const/4 v6, -0x1

    if-le p2, v6, :cond_15

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-ge p2, v6, :cond_15

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :cond_15
    const/4 v2, 0x0

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_16
    throw v5
.end method

.method public setAttachmentType(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConversation(),before="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",after="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsAlias()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    :goto_2
    invoke-virtual {p0, v2, p2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    :cond_3
    :goto_3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->isNeededRequestInitChat()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_7

    :goto_4
    invoke-virtual {p0, v2, p2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_4
.end method

.method public setDelayedDeliveryTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mDelayedDeliveryTime:J

    return-void
.end method

.method public setEmojiRequiresMms(Z)V
    .locals 2

    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    return-void
.end method

.method public setFlag_splitMmsOnGoing(I)I
    .locals 3

    sput p1, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlag_splitMmsOnGoing:flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    return v0
.end method

.method public setFloatingMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mFloatingMsgId:Ljava/lang/String;

    return-void
.end method

.method public setFreeMessageState(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    return-void
.end method

.method public setGroupChatFtFromNewComposer(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mDataGroupChatFtFromNewComposer:Landroid/content/Intent;

    return-void
.end method

.method public setGroupConversation(ZZ)V
    .locals 2

    const/16 v1, 0x40

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setHasMultipleRecipients(ZZ)V
    .locals 2

    const/16 v1, 0x40

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->isGroupMessageComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsSignatureAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    return-void
.end method

.method public setLengthRequiresMms(Z)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    goto :goto_0
.end method

.method public setMessageDeliveryReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    return-void
.end method

.method public setMessageReadReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    return-void
.end method

.method public setMessageUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-void
.end method

.method public setMessageUriToNull()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public setMsgBody(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_enable_signature"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "pref_key_signature_text"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object p1, v3, v5

    :cond_1
    return-void
.end method

.method public setMyLocation(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMyLocation() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMyLocation:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPriority : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    return-void
.end method

.method public setRecipients(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    return-void
.end method

.method public setReplyAllGroupConversation(ZZ)V
    .locals 2

    const/16 v1, 0x10

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setGroupMessage(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setReqestChat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsReqestChat:Z

    return-void
.end method

.method public setReqestMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsReqestMessage:Z

    return-void
.end method

.method public setReserveDeliveryTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    return-void
.end method

.method public setStickerViewFromNewComposer(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStickerView:Landroid/view/View;

    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/mms/util/StringUtils;->cutUtf8ByEucByte([BI)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v7

    if-eqz p1, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {p0, v9, v7, v4, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    :cond_0
    :goto_2
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v7, "text/plain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cid:text_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v3, v4, v7, v8, v9}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v6

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v7

    if-le v4, v7, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v4

    invoke-interface {p1, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_4
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_5
    move v4, v6

    goto/16 :goto_1

    :cond_6
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    move v4, v5

    :goto_4
    invoke-direct {p0, v9, v4, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto/16 :goto_2

    :cond_7
    move v4, v6

    goto :goto_4

    :cond_8
    if-nez p1, :cond_0

    if-eqz p1, :cond_9

    move v4, v5

    :goto_5
    invoke-direct {p0, v9, v4, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto/16 :goto_2

    :cond_9
    move v4, v6

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v7, 0x7f0c002e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method public setWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "setWorkingRecipients"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V

    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "kkahn/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncWorkingRecipients()>splitMmsOnGoing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public syncWorkingRecipientsForFreeMessageGroupChatFromNewComposer()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    :cond_0
    return-void
.end method

.method public unDiscard()V
    .locals 2

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "unDiscard"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return-void
.end method

.method public updateFreeMessageState()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRecipientCapsStateForFreeMesage()Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isReqestMessage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "updateFreeMessageState: requiresMms = true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isIncludeOWNnumber()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "updateFreeMessageState: Just include OWN number"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isAbleToUseNewworkForFreeMessage()Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->misDefaultSMS:Z

    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->isFreeMessageRecipientOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->misDefaultSMS:Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mapFreeMessageRecipientCaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v1, :cond_7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    goto :goto_0

    :cond_7
    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mFreeMessageState:I

    goto :goto_0
.end method

.method public updateSendStats(Lcom/android/mms/data/Conversation;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/data/ContactList;->getNumbers(ZZ)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_0
    new-instance v4, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v0, :cond_0

    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSendStats,phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/mms/Log;->filterOutDigits([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "Mms/WorkingMessage"

    const-string v6, "SQLiteException caught"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "Mms/WorkingMessage"

    const-string v6, "IllegalStateException caught"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateState(IZZZ)V
    .locals 7

    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x21

    if-lez v0, :cond_2

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :cond_2
    if-ne p1, v4, :cond_3

    if-eqz p3, :cond_3

    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    :cond_3
    if-eqz p4, :cond_4

    if-nez v6, :cond_8

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_6
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_9

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto/16 :goto_1

    :cond_8
    if-eqz v6, :cond_4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v5, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "-"

    goto :goto_3
.end method

.method public updateText(ILjava/lang/CharSequence;)I
    .locals 13

    const-string v9, "Mms/WorkingMessage"

    const-string v10, "changeSlideText()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v3

    new-instance v6, Lcom/android/mms/model/TextModel;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v10, "text/plain"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cid:text_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v12

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, p2, v9}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :try_start_0
    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setText(ILjava/lang/CharSequence;)V

    return v4

    :cond_1
    const-string p2, ""

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v4, -0x2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v7}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v4, -0x2

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getRemainingContentSize()I

    move-result v0

    if-lez v0, :cond_3

    const-string v9, "Mms/WorkingMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowedBytes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v10, v0

    invoke-static {v9, v10}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v7}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    const/4 v4, -0x2

    move-object p2, v8

    goto :goto_1

    :cond_3
    move-object p2, v8

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v7}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    const/4 v4, -0x2

    move-object p2, v8

    goto :goto_1
.end method

.method public updateThreadSessionId(JLjava/lang/String;)V
    .locals 6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "session_id"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normal_thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p3}, Lcom/android/mms/data/Conversation;->setSessionId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeStateToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "anonymous"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
