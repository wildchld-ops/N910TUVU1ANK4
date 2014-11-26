.class public Lcom/android/mms/ui/VMessage;
.super Ljava/lang/Object;
.source "VMessage.java"


# static fields
.field public static final BEGIN_VBODY:Ljava/lang/String; = "BEGIN:VBODY"

.field public static final BEGIN_VCARD:Ljava/lang/String; = "BEGIN:VCARD"

.field public static final BEGIN_VENV:Ljava/lang/String; = "BEGIN:VENV"

.field public static final BEGIN_VMSG:Ljava/lang/String; = "BEGIN:VMSG"

.field public static final DATE_VMSG:Ljava/lang/String; = "Date:"

.field public static final END_VBODY:Ljava/lang/String; = "END:VBODY"

.field public static final END_VCARD:Ljava/lang/String; = "END:VCARD"

.field public static final END_VENV:Ljava/lang/String; = "END:VENV"

.field public static final END_VMSG:Ljava/lang/String; = "END:VMSG"

.field public static final FNAME_UTF8_VCARD:Ljava/lang/String; = "FN;CHARSET=UTF-8:"

.field public static final FNAME_VCARD:Ljava/lang/String; = "FN:"

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final LOG_TAG:Ljava/lang/String; = "VMessage"

.field public static final NAME_UTF8_VCARD:Ljava/lang/String; = "N;CHARSET=UTF-8:"

.field public static final NAME_VCARD:Ljava/lang/String; = "N:"

.field private static final ROW_VMSG_BODY:I = 0x5

.field private static final ROW_VMSG_DATE:I = 0x4

.field private static final ROW_VMSG_INBOX_ADDR:I = 0x2

.field private static final ROW_VMSG_SENT_ADDR:I = 0x3

.field private static final ROW_VMSG_TYPE:I = 0x0

.field public static final SUBJECT_VMSG:Ljava/lang/String; = "Subject:"

.field public static final TEL_VCARD:Ljava/lang/String; = "TEL;"

.field public static final VERSION_VCARD:Ljava/lang/String; = "VERSION:2.1"

.field public static final VERSION_VMSG:Ljava/lang/String; = "VERSION:1.1"

.field private static final VMSG_ATTR_CHARSET_PROPERTY:Ljava/lang/String; = "CHARSET"

.field private static final VMSG_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VMSG_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VMSG_ATTR_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VMSG_ATTR_LANGUAGE_PROPERTY:Ljava/lang/String; = "LANGUAGE"

.field public static final VMSG_BODY_PROPERTY_DATE:Ljava/lang/String; = "Date"

.field public static final VMSG_BODY_PROPERTY_FROM:Ljava/lang/String; = "From"

.field public static final VMSG_BODY_PROPERTY_SUBJECT:Ljava/lang/String; = "Subject"

.field public static final VMSG_BODY_PROPERTY_TO:Ljava/lang/String; = "To"

.field private static final VMSG_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VMSG_INDICATION_MESSAGE_TYPE:Ljava/lang/String; = "X-IRMC-TYPE"

.field private static final VMSG_INDICATION_MESSAGE_TYPE_INET:Ljava/lang/String; = "INET"

.field private static final VMSG_INDICATION_MESSAGE_TYPE_MSG:Ljava/lang/String; = "MSG"

.field private static final VMSG_INDICATION_MSG_BOX:Ljava/lang/String; = "X-IRMC-BOX"

.field private static final VMSG_INDICATION_MSG_BOX_DRAFT:Ljava/lang/String; = "DRAFT"

.field private static final VMSG_INDICATION_MSG_BOX_INBOX:Ljava/lang/String; = "INBOX"

.field private static final VMSG_INDICATION_MSG_BOX_SENT:Ljava/lang/String; = "SENT"

.field private static final VMSG_INDICATION_READ_STATUS:Ljava/lang/String; = "X-IRMC-STATUS"

.field private static final VMSG_INDICATION_READ_STATUS_READ:Ljava/lang/String; = "READ"

.field private static final VMSG_INDICATION_READ_STATUS_UNREAD:Ljava/lang/String; = "UNREAD"

.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private needCharset:Z

.field strBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r\n"

    sput-object v0, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VMessage;->strBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VMessage;->strBuilder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    return-void
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_4
        0x3b -> :sswitch_0
        0x3c -> :sswitch_3
        0x3e -> :sswitch_3
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v2, "=3D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "=0D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "=0A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private unfoldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\n"

    const-string v1, "\r\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=3D"

    const-string v2, "="

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=0D"

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=0A"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private vMessageBodyContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 9
    .param p1    # Lcom/android/mms/ui/MessageItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "h:mma, yyyy MMM dd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/VMessage;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const-string v6, "VMessage"

    const-string v7, "vMessageBodyContent: not supported INET type in current version .."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Date:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, "sms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v6, "sms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const-string v6, "mms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private vMessageBodyProperties(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/android/mms/ui/MessageItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const-string v4, "sms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, "mms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHARSET="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private vMessageContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN:VBODY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageBodyContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "END:VBODY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageRecipient(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNestedEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "END:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageNestedEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "END:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageObject(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 8
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    const-string v2, "BEGIN:VMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VERSION:1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sms"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-ne v2, v4, :cond_3

    const-string v2, "X-IRMC-STATUS:READ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    if-eq v0, v4, :cond_1

    if-ne v0, v4, :cond_6

    :cond_1
    const-string v2, "X-IRMC-BOX:INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_a

    iput-boolean v5, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const-string v2, "X-IRMC-TYPE:MSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageOriginator(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END:VMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    const-string v2, "X-IRMC-STATUS:UNREAD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v2, "mms"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v2, v4, :cond_5

    const-string v2, "X-IRMC-STATUS:READ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v2, "X-IRMC-STATUS:UNREAD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    if-eq v0, v6, :cond_7

    if-ne v0, v6, :cond_8

    :cond_7
    const-string v2, "X-IRMC-BOX:SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    if-eq v0, v7, :cond_9

    if-ne v0, v7, :cond_2

    :cond_9
    const-string v2, "X-IRMC-BOX:DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    iput-boolean v5, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const-string v2, "X-IRMC-TYPE:MSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private vMessageOriginator(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 10
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-eq v2, v8, :cond_2

    if-ne v2, v8, :cond_5

    :cond_2
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    :goto_1
    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iget-boolean v7, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    if-ne v7, v8, :cond_3

    const-string v4, ""

    const-string v3, ""

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_4
    new-instance v1, Lcom/android/mms/ui/VCardComposerMsg;

    iget-object v6, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const-string v7, "default"

    invoke-direct {v1, v6, v7, v9}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v9, v3, v4, v8}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v6, v5

    goto :goto_0

    :cond_5
    const-string v4, ""

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3, v4, v8}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private vMessageRecipient(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 14
    .param p1    # Lcom/android/mms/ui/MessageItem;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v12, v2, v11

    array-length v5, v2

    if-nez v5, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/mms/ui/VCardComposerMsg;

    iget-object v11, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const-string v12, "default"

    const/4 v13, 0x0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_7

    aget-object v11, v2, v3

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v9, 0x0

    aget-object v9, v2, v3

    if-eqz v7, :cond_4

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const-string v1, ""

    :goto_2
    const/4 v11, 0x1

    if-eq v4, v11, :cond_2

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const v12, 0x7f0c000d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    const-string v9, ""

    :cond_3
    iget-boolean v11, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const-string v1, ""

    const-string v9, ""

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v7

    goto :goto_2

    :cond_5
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v1, v9, v12}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v1, v9, v12}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method


# virtual methods
.method public checkPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "BEGIN:VMSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v1, "VERSION:1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    const-string v1, "VERSION:2.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    goto :goto_0

    :cond_4
    const-string v1, "FN:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p1, v0

    goto :goto_0

    :cond_5
    const-string v1, "FN;CHARSET=UTF-8:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p1, v0

    goto :goto_0

    :cond_6
    const-string v1, "END:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p1, v0

    goto :goto_0

    :cond_7
    const-string v1, "BEGIN:VENV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p1, v0

    goto :goto_0

    :cond_8
    const-string v1, "BEGIN:VBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p1, v0

    goto :goto_0

    :cond_9
    const-string v1, "END:VBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object p1, v0

    goto :goto_0

    :cond_a
    const-string v1, "END:VENV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object p1, v0

    goto :goto_0

    :cond_b
    const-string v1, "END:VMSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object p1, v0

    goto :goto_0

    :cond_c
    const-string v1, "X-IRMC-STATUS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object p1, v0

    goto :goto_0

    :cond_d
    const-string v1, "X-IRMC-TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object p1, v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "X-IRMC-BOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageMsgTypeParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string v0, "N:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    const-string v0, "TEL;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageTelParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    const-string v0, "Date:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageDateParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v0, "N;CHARSET=UTF-8:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public createVMessage(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageObject(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public readFileFromSDCard1(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 16
    .param p1    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x6

    new-array v1, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "INBOX"

    aput-object v15, v1, v14

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v14, "X-IRMC-BOX"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v4

    move-object v8, v9

    move-object v10, v11

    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_1

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_2
    if-eqz v10, :cond_2

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_3
    :goto_4
    const/4 v2, 0x0

    :goto_5
    return-object v2

    :cond_4
    :try_start_8
    const-string v14, "TEL;"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    aget-object v14, v1, v14

    const-string v15, "SENT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v3, v4

    move-object v8, v9

    move-object v10, v11

    :goto_6
    :try_start_9
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v8, :cond_5

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_5
    :goto_7
    if-eqz v10, :cond_6

    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_6
    :goto_8
    if-eqz v3, :cond_3

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    :goto_9
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_7
    const/4 v14, 0x2

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v14

    move-object v3, v4

    move-object v8, v9

    move-object v10, v11

    :goto_a
    if-eqz v8, :cond_8

    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :cond_8
    :goto_b
    if-eqz v10, :cond_9

    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    :cond_9
    :goto_c
    if-eqz v3, :cond_a

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :cond_a
    :goto_d
    throw v14

    :cond_b
    :try_start_11
    const-string v14, "N:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "N;CHARSET=UTF-8:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_c
    const/4 v14, 0x0

    aget-object v14, v1, v14

    const-string v15, "INBOX"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x2

    aget-object v14, v1, v14

    if-nez v14, :cond_d

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x0

    aget-object v14, v1, v14

    const-string v15, "SENT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    aget-object v14, v1, v14

    if-nez v14, :cond_0

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    :cond_e
    const-string v14, "Date:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    :cond_f
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    :cond_10
    const/4 v14, 0x5

    aget-object v14, v1, v14

    if-eqz v14, :cond_11

    const/4 v14, 0x5

    const/4 v15, 0x5

    aget-object v15, v1, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    :cond_11
    const/4 v12, 0x0

    :goto_e
    const/4 v14, 0x5

    if-gt v12, v14, :cond_12

    aget-object v14, v1, v12

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_12
    if-eqz v9, :cond_13

    :try_start_12
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_13
    :goto_f
    if-eqz v11, :cond_14

    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_14
    :goto_10
    if-eqz v4, :cond_15

    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :cond_15
    :goto_11
    move-object v3, v4

    move-object v8, v9

    move-object v10, v11

    goto/16 :goto_5

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_c

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_d

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :catch_8
    move-exception v5

    goto/16 :goto_9

    :catch_9
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :catch_a
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    :catch_b
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    :catch_c
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    :catch_d
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :catchall_1
    move-exception v14

    goto/16 :goto_a

    :catchall_2
    move-exception v14

    move-object v10, v11

    goto/16 :goto_a

    :catchall_3
    move-exception v14

    move-object v8, v9

    move-object v10, v11

    goto/16 :goto_a

    :catch_e
    move-exception v7

    goto/16 :goto_6

    :catch_f
    move-exception v7

    move-object v10, v11

    goto/16 :goto_6

    :catch_10
    move-exception v7

    move-object v8, v9

    move-object v10, v11

    goto/16 :goto_6

    :catch_11
    move-exception v6

    goto/16 :goto_1

    :catch_12
    move-exception v6

    move-object v10, v11

    goto/16 :goto_1

    :catch_13
    move-exception v6

    move-object v8, v9

    move-object v10, v11

    goto/16 :goto_1
.end method

.method public readFileFromSDCard2(Ljava/io/File;)Lcom/android/mms/ui/MsgItem;
    .locals 20
    .param p1    # Ljava/io/File;

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v18, 0x6

    :try_start_3
    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_3

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v16, 0x0

    if-eqz v13, :cond_0

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    :cond_2
    :goto_2
    move-object v6, v7

    move-object v12, v13

    move-object v14, v15

    :goto_3
    return-object v16

    :cond_3
    const/16 v18, 0x0

    :try_start_7
    const-string v19, "INBOX"

    aput-object v19, v2, v18

    :cond_4
    :goto_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    const-string v18, "X-IRMC-BOX"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v10

    move-object v6, v7

    move-object v12, v13

    move-object v14, v15

    :goto_5
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v12, :cond_5

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_6
    if-eqz v14, :cond_6

    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_7
    :goto_8
    const/16 v16, 0x0

    goto :goto_3

    :cond_8
    :try_start_c
    const-string v18, "TEL;"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v11

    move-object v6, v7

    move-object v12, v13

    move-object v14, v15

    :goto_9
    :try_start_d
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v12, :cond_9

    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_9
    :goto_a
    if-eqz v14, :cond_a

    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_a
    :goto_b
    if-eqz v6, :cond_7

    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_8

    :catch_2
    move-exception v9

    :goto_c
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_b
    const/16 v18, 0x2

    :try_start_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v18

    move-object v6, v7

    move-object v12, v13

    move-object v14, v15

    :goto_d
    if-eqz v12, :cond_c

    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    :cond_c
    :goto_e
    if-eqz v14, :cond_d

    :try_start_13
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    :cond_d
    :goto_f
    if-eqz v6, :cond_e

    :try_start_14
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    :cond_e
    :goto_10
    throw v18

    :cond_f
    :try_start_15
    const-string v18, "N:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    const-string v18, "N;CHARSET=UTF-8:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    :cond_10
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "INBOX"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x2

    aget-object v18, v2, v18

    if-nez v18, :cond_11

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    :cond_11
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x3

    aget-object v18, v2, v18

    if-nez v18, :cond_4

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    :cond_12
    const-string v18, "Date:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    :cond_13
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    :cond_14
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_18

    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "INBOX"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result v18

    if-nez v18, :cond_18

    const/16 v16, 0x0

    if-eqz v13, :cond_15

    :try_start_16
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    :cond_15
    :goto_11
    if-eqz v15, :cond_16

    :try_start_17
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    :cond_16
    :goto_12
    if-eqz v7, :cond_17

    :try_start_18
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    :cond_17
    :goto_13
    move-object v6, v7

    move-object v12, v13

    move-object v14, v15

    goto/16 :goto_3

    :cond_18
    :try_start_19
    const-string v3, ""

    const-string v4, ""

    const/16 v18, 0x4

    aget-object v8, v2, v18

    const/16 v18, 0x5

    aget-object v4, v2, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    const/4 v5, 0x1

    const/16 v18, 0x3

    aget-object v3, v2, v18

    :goto_14
    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0c013b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_19
    if-nez v8, :cond_1a

    const-string v8, "2000.1.1.12.00.00"

    :cond_1a
    new-instance v16, Lcom/android/mms/ui/MsgItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v3, v4, v8}, Lcom/android/mms/ui/MsgItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v13, :cond_1b

    :try_start_1a
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    :cond_1b
    :goto_15
    if-eqz v15, :cond_1c

    :try_start_1b
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    :cond_1c
    :goto_16
    if-eqz v7, :cond_1d

    :try_start_1c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    :cond_1d
    :goto_17
    move-object v6, v7

    move-object v12, v13

    move-object v14, v15

    goto/16 :goto_3

    :cond_1e
    const/4 v5, 0x2

    const/16 v18, 0x2

    :try_start_1d
    aget-object v3, v2, v18
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_14

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    :catch_5
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_10

    :catch_6
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :catch_7
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :catch_8
    move-exception v9

    goto/16 :goto_c

    :catch_9
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    :catch_a
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    :catch_b
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_c
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_d
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_e
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_11

    :catch_f
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_12

    :catch_10
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_13

    :catch_11
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15

    :catch_12
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16

    :catch_13
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17

    :catchall_1
    move-exception v18

    goto/16 :goto_d

    :catchall_2
    move-exception v18

    move-object v14, v15

    goto/16 :goto_d

    :catchall_3
    move-exception v18

    move-object v12, v13

    move-object v14, v15

    goto/16 :goto_d

    :catch_14
    move-exception v11

    goto/16 :goto_9

    :catch_15
    move-exception v11

    move-object v14, v15

    goto/16 :goto_9

    :catch_16
    move-exception v11

    move-object v12, v13

    move-object v14, v15

    goto/16 :goto_9

    :catch_17
    move-exception v10

    goto/16 :goto_5

    :catch_18
    move-exception v10

    move-object v14, v15

    goto/16 :goto_5

    :catch_19
    move-exception v10

    move-object v12, v13

    move-object v14, v15

    goto/16 :goto_5
.end method

.method public readStreamFromViewer1(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 12
    .param p1    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x0

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x6

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "INBOX"

    aput-object v6, v0, v8

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v6, "X-IRMC-BOX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    goto :goto_0

    :cond_1
    const-string v6, "TEL;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v0, v8

    const-string v7, "SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    goto :goto_0

    :cond_3
    const-string v6, "N:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "N;CHARSET=UTF-8:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    aget-object v6, v0, v8

    const-string v7, "INBOX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v0, v10

    if-nez v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    goto :goto_0

    :cond_5
    aget-object v6, v0, v8

    const-string v7, "SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v0, v11

    if-nez v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    goto :goto_0

    :cond_6
    const-string v6, "Date:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x4

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    goto/16 :goto_0

    :cond_8
    aget-object v6, v0, v9

    if-eqz v6, :cond_9

    aget-object v6, v0, v9

    invoke-direct {p0, v6}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    :cond_9
    const/4 v4, 0x0

    :goto_1
    if-gt v4, v9, :cond_a

    aget-object v6, v0, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v1
.end method

.method public readStreamFromViewer2(Ljava/io/InputStream;)Lcom/android/mms/ui/MsgItem;
    .locals 14
    .param p1    # Ljava/io/InputStream;

    const/4 v11, 0x0

    :try_start_0
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v12, 0x6

    new-array v0, v12, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    move-object v9, v11

    :goto_0
    return-object v9

    :cond_0
    const/4 v12, 0x0

    const-string v13, "INBOX"

    aput-object v13, v0, v12

    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v12, "X-IRMC-BOX"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    move-object v9, v11

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v12, "TEL;"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x3

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_3
    const/4 v12, 0x2

    :try_start_2
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    :cond_4
    const-string v12, "N:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "N;CHARSET=UTF-8:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    aget-object v12, v0, v12

    if-nez v12, :cond_6

    const/4 v12, 0x2

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x3

    aget-object v12, v0, v12

    if-nez v12, :cond_1

    const/4 v12, 0x3

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    :cond_7
    const-string v12, "Date:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x4

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    :cond_8
    const/4 v12, 0x5

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    move-object v9, v11

    goto/16 :goto_0

    :cond_a
    const-string v1, ""

    const-string v2, ""

    const/4 v12, 0x4

    aget-object v5, v0, v12

    const/4 v12, 0x5

    aget-object v2, v0, v12

    invoke-direct {p0, v2}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v3, 0x1

    const/4 v12, 0x3

    aget-object v1, v0, v12

    :goto_3
    if-nez v1, :cond_b

    iget-object v12, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const v13, 0x7f0c013b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_b
    if-nez v5, :cond_c

    const-string v5, "2000.1.1.12.00.00"

    :cond_c
    new-instance v9, Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9, v3, v1, v2, v5}, Lcom/android/mms/ui/MsgItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x2

    const/4 v12, 0x2

    aget-object v1, v0, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public vMessageDateParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public vMessageMsgTypeParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public vMessageTelParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
