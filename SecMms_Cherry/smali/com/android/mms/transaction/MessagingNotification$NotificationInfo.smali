.class public Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationInfo"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAttachmentBitmap:Landroid/graphics/Bitmap;

.field private mAttachmentCount:I

.field public mAttachmentType:I

.field private mMessage:Ljava/lang/String;

.field public final mMsgId:J

.field private final mMsgType:I

.field public final mPriority:I

.field private mSender:Lcom/android/mms/data/Contact;

.field public mSimSlot:I

.field public final mSubject:Ljava/lang/String;

.field public final mThreadId:J

.field private mTicker:Ljava/lang/CharSequence;

.field public final mTimeMillis:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # I
    .param p8    # J
    .param p10    # J
    .param p12    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    iput p7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    iput-wide p8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    iput p12, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    iput-wide p10, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentCount:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJII)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # I
    .param p8    # J
    .param p10    # J
    .param p12    # I
    .param p13    # I

    invoke-direct/range {p0 .. p12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V

    iput p13, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSimSlot:I

    return-void
.end method

.method private createTickTitle(Landroid/content/Context;IZ)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Z

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-static {p1, v3, v4, v5, v5}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/data/Contact;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v3, v4}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    iput-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    :goto_0
    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/data/Contact;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private parsingPdu(Landroid/content/Context;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # I

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$700()Z

    move-result v4

    if-nez v4, :cond_0

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->sEnableLockscreen:Z
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$800()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMmsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_1

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeOnSlide(Lcom/android/mms/model/SlideshowModel;)I
    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->access$900(Lcom/android/mms/model/SlideshowModel;)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-gt p2, v4, :cond_3

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$1000(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    :cond_3
    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$1100(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getAttachmentCount()I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentCount:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/16 v4, 0xa

    const/4 v3, 0x0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0e0009

    invoke-direct {v0, p1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v2

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v2}, Lcom/android/mms/transaction/MessagingNotification;->access$1200(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    return-object v1
.end method

.method public formatInboxMessage(Landroid/content/Context;IZ)Ljava/lang/CharSequence;
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Z

    const/4 v10, 0x0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v8, 0x7f0e0009

    invoke-direct {v2, p1, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v8, 0x7f0e000b

    invoke-direct {v3, p1, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-boolean v8, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v8, :cond_7

    iget-wide v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v8, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\\n\\s+"

    const-string v9, "\n"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    if-nez v8, :cond_9

    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v2, v10, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    const v8, 0x7f0c0365

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isSms()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCb()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v3, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v8

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v8}, Lcom/android/mms/transaction/MessagingNotification;->access$1200(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v3, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    return-object v6

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    const-string v0, ""

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public formatPictureMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v6, 0x0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f0e0009

    invoke-direct {v2, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\\n\\s+"

    const-string v5, "\n"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v6, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v6, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v3

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMmsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAttachmentBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->parsingPdu(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getAttachmentCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentCount:I

    return v0
.end method

.method public getAttachmentType(Landroid/content/Context;I)I
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->parsingPdu(Landroid/content/Context;I)V

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    goto :goto_0
.end method

.method public getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Contact;->reload(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    goto :goto_0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const v2, 0x7f0c01d3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/CMASViewer;->createIntentForNoti(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    # invokes: Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$600(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    const v2, 0x7f0c01f7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$600(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isFromRecvNoti"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method

.method public getMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->parsingPdu(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMmsUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    return v0
.end method

.method public getSimSlot()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSimSlot:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    return-wide v0
.end method

.method public getTicker(Landroid/content/Context;IZ)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Z

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->createTickTitle(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    return-wide v0
.end method

.method public getTitle(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Z

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->createTickTitle(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCb()Z
    .locals 2

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCmas()Z
    .locals 2

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDdm()Z
    .locals 2

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMms()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrioritySender(Landroid/content/Context;)Z
    .locals 4
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo isPrioritySender result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSms()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWap()Z
    .locals 2

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMmsInfo(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/android/mms/data/Contact;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # I
    .param p4    # Ljava/lang/CharSequence;
    .param p5    # Ljava/lang/String;
    .param p6    # Lcom/android/mms/data/Contact;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    return-void
.end method
