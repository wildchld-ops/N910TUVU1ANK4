.class public Lcom/android/mms/ui/VCardComposerMsg;
.super Lcom/android/vcard/VCardComposer;
.source "VCardComposerMsg.java"


# static fields
.field public static final ATTR_TYPE:Ljava/lang/String; = "TYPE"

.field public static final ATTR_TYPE_BBS:Ljava/lang/String; = "BBS"

.field public static final ATTR_TYPE_CAR:Ljava/lang/String; = "CAR"

.field public static final ATTR_TYPE_CELL:Ljava/lang/String; = "CELL"

.field public static final ATTR_TYPE_FAX:Ljava/lang/String; = "FAX"

.field public static final ATTR_TYPE_HOME:Ljava/lang/String; = "HOME"

.field public static final ATTR_TYPE_INTERNET:Ljava/lang/String; = "INTERNET"

.field public static final ATTR_TYPE_ISDN:Ljava/lang/String; = "ISDN"

.field public static final ATTR_TYPE_MODEM:Ljava/lang/String; = "MODEM"

.field public static final ATTR_TYPE_MSG:Ljava/lang/String; = "MSG"

.field public static final ATTR_TYPE_PAGER:Ljava/lang/String; = "PAGER"

.field public static final ATTR_TYPE_PHONE_EXTRA_ASSISTANT:Ljava/lang/String; = "ASSISTANT"

.field public static final ATTR_TYPE_PHONE_EXTRA_CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final ATTR_TYPE_PHONE_EXTRA_COMPANY_MAIN:Ljava/lang/String; = "COMPANY-MAIN"

.field public static final ATTR_TYPE_PHONE_EXTRA_OTHER:Ljava/lang/String; = "OTHER"

.field public static final ATTR_TYPE_PHONE_EXTRA_RADIO:Ljava/lang/String; = "RADIO"

.field public static final ATTR_TYPE_PHONE_EXTRA_TELEX:Ljava/lang/String; = "TELEX"

.field public static final ATTR_TYPE_PHONE_EXTRA_TTY_TDD:Ljava/lang/String; = "TTY-TDD"

.field public static final ATTR_TYPE_PREF:Ljava/lang/String; = "PREF"

.field public static final ATTR_TYPE_VIDEO:Ljava/lang/String; = "VIDEO"

.field public static final ATTR_TYPE_VOICE:Ljava/lang/String; = "VOICE"

.field public static final ATTR_TYPE_WORK:Ljava/lang/String; = "WORK"

.field public static final ATTR_TYPE_X_IRMC_N:Ljava/lang/String; = "X-IRMC-N"

.field private static final DEFAULT_EMAIL_TYPE:Ljava/lang/String; = "INTERNET"

.field private static final ENCODE64:[C

.field private static final LOG_TAG:Ljava/lang/String; = "vcard.VCardComposerMsg"

.field private static PAD:C = '\u0000'

.field public static final PROPERTY_X_AIM:Ljava/lang/String; = "X-AIM"

.field public static final PROPERTY_X_GOOGLE_TALK:Ljava/lang/String; = "X-GOOGLE-TALK"

.field public static final PROPERTY_X_GOOGLE_TALK_WITH_SPACE:Ljava/lang/String; = "X-GOOGLE TALK"

.field public static final PROPERTY_X_ICQ:Ljava/lang/String; = "X-ICQ"

.field public static final PROPERTY_X_JABBER:Ljava/lang/String; = "X-JABBER"

.field public static final PROPERTY_X_MSN:Ljava/lang/String; = "X-MSN"

.field public static final PROPERTY_X_SKYPE_PSTNNUMBER:Ljava/lang/String; = "X-SKYPE-PSTNNUMBER"

.field public static final PROPERTY_X_SKYPE_USERNAME:Ljava/lang/String; = "X-SKYPE-USERNAME"

.field public static final PROPERTY_X_YAHOO:Ljava/lang/String; = "X-YAHOO"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VCARD_ATTR_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_ATTR_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_ATTR_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_COL_SEPARATOR:Ljava/lang/String; = "\r\n"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PROPERTY_ADR:Ljava/lang/String; = "ADR"

.field private static final VCARD_PROPERTY_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final VCARD_PROPERTY_BIRTHDAY:Ljava/lang/String; = "BDAY"

.field private static final VCARD_PROPERTY_CALLTYPE_INCOMING:Ljava/lang/String; = "INCOMING"

.field private static final VCARD_PROPERTY_CALLTYPE_MISSED:Ljava/lang/String; = "MISSED"

.field private static final VCARD_PROPERTY_CALLTYPE_OUTGOING:Ljava/lang/String; = "OUTGOING"

.field private static final VCARD_PROPERTY_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final VCARD_PROPERTY_END:Ljava/lang/String; = "END"

.field private static final VCARD_PROPERTY_FULL_NAME:Ljava/lang/String; = "FN"

.field private static final VCARD_PROPERTY_NAME:Ljava/lang/String; = "N"

.field private static final VCARD_PROPERTY_NICKNAME:Ljava/lang/String; = "NICKNAME"

.field private static final VCARD_PROPERTY_NOTE:Ljava/lang/String; = "NOTE"

.field private static final VCARD_PROPERTY_ORG:Ljava/lang/String; = "ORG"

.field private static final VCARD_PROPERTY_PHOTO:Ljava/lang/String; = "PHOTO"

.field private static final VCARD_PROPERTY_SORT_STRING:Ljava/lang/String; = "SORT-STRING"

.field private static final VCARD_PROPERTY_SOUND:Ljava/lang/String; = "SOUND"

.field private static final VCARD_PROPERTY_TEL:Ljava/lang/String; = "TEL"

.field private static final VCARD_PROPERTY_TITLE:Ljava/lang/String; = "TITLE"

.field private static final VCARD_PROPERTY_URL:Ljava/lang/String; = "URL"

.field private static final VCARD_PROPERTY_VERSION:Ljava/lang/String; = "VERSION"

.field private static final VCARD_PROPERTY_X_CLASS:Ljava/lang/String; = "X-CLASS"

.field private static final VCARD_PROPERTY_X_DCM_HMN_MODE:Ljava/lang/String; = "X-DCM-HMN-MODE"

.field private static final VCARD_PROPERTY_X_NICKNAME:Ljava/lang/String; = "X-NICKNAME"

.field private static final VCARD_PROPERTY_X_NO:Ljava/lang/String; = "X-NO"

.field private static final VCARD_PROPERTY_X_PHONETIC_FIRST_NAME:Ljava/lang/String; = "X-PHONETIC-FIRST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_LAST_NAME:Ljava/lang/String; = "X-PHONETIC-LAST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "X-PHONETIC-MIDDLE-NAME"

.field private static final VCARD_PROPERTY_X_REDUCTION:Ljava/lang/String; = "X-REDUCTION"

.field private static final VCARD_PROPERTY_X_TIMESTAMP:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field public static final VERSION_V21:Ljava/lang/String; = "2.1"

.field public static final VERSION_V30:Ljava/lang/String; = "3.0"


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharsetString:Ljava/lang/String;

.field private final mContentResolverEx:Landroid/content/ContentResolver;

.field private final mContextEx:Landroid/content/Context;

.field private mCursorEx:Landroid/database/Cursor;

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30:Z

.field private mNeedPhotoForVCard:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mUsesQPToPrimaryProperties:Z

.field private final mUsesQuotedPrintable:Z

.field private final mVCardAttributeCharset:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3d

    sput-char v0, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    iput-object p1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContextEx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContentResolverEx:Landroid/content/ContentResolver;

    iput p2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    iput-boolean p3, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCareHandlerErrors:Z

    iput-boolean p4, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    const-string v0, "SHIFT_JIS"

    const-string v1, "docomo"

    invoke-static {v0, v1}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    iput-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    iput-object p1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContextEx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContentResolverEx:Landroid/content/ContentResolver;

    iput p2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    iput-boolean p3, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCareHandlerErrors:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    const-string v0, "SHIFT_JIS"

    const-string v1, "docomo"

    invoke-static {v0, v1}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;IZZ)V

    return-void
.end method

.method private appendBirthday(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data2"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data1"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BDAY"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendEmails(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v9, "data2"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    const-string v9, "data3"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "data1"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v4, 0x1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, p1, v9, v6, v3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private appendIms(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const-string v5, "vnd.android.cursor.item/im"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "data5"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "X-GOOGLE-TALK"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private appendNickNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "vnd.android.cursor.item/nickname"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v9, :cond_3

    const-string v5, "NICKNAME"

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v9, "data1"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v9, :cond_4

    new-array v9, v7, [Ljava/lang/String;

    aput-object v4, v9, v8

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    move v6, v7

    :goto_2
    if-eqz v6, :cond_5

    invoke-direct {p0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v6, :cond_2

    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v9, :cond_6

    const-string v5, "X-NICKNAME"

    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    return-void
.end method

.method private appendNotes(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "vnd.android.cursor.item/note"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v0, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v10, ""

    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v4, 0x1

    :goto_2
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v5, 0x1

    :goto_3
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_4
    return-void

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x1

    :goto_5
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v5, 0x1

    :goto_6
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    goto :goto_6
.end method

.method private appendOrganizations(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v0, "data1"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v0, "data4"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v2, "ORG"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x1

    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v6, "TITLE"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v8, 0x1

    :goto_3
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    return-void
.end method

.method private appendPhones(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v10, "data2"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "data3"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "data1"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v4, 0x1

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, p1, v10, v3, v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v7, v9

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    iget-boolean v10, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private appendPhotos(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const/16 v12, 0x47

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v6, "data15"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v6, v2

    if-lt v6, v11, :cond_1

    aget-byte v6, v2, v8

    if-ne v6, v12, :cond_1

    aget-byte v6, v2, v9

    const/16 v7, 0x49

    if-ne v6, v7, :cond_1

    aget-byte v6, v2, v10

    const/16 v7, 0x46

    if-ne v6, v7, :cond_1

    const-string v5, "GIF"

    :goto_1
    invoke-static {v2}, Lcom/android/mms/ui/VCardComposerMsg;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v6, v2

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    aget-byte v6, v2, v8

    const/16 v7, -0x77

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v9

    const/16 v7, 0x50

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v10

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v11

    if-ne v6, v12, :cond_2

    const-string v5, "PNG"

    goto :goto_1

    :cond_2
    array-length v6, v2

    if-lt v6, v10, :cond_3

    aget-byte v6, v2, v8

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    aget-byte v6, v2, v9

    const/16 v7, -0x28

    if-ne v6, v7, :cond_3

    const-string v5, "JPEG"

    goto :goto_1

    :cond_3
    const-string v6, "vcard.VCardComposerMsg"

    const-string v7, "Unknown photo type. Ignore."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private appendPostals(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    const-string v1, "ADR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HOME"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vcard.VCardComposerMsg"

    const-string v1, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v3, p3, :cond_0

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private appendStructuredNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_2

    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v1, :cond_0

    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FN"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const/16 v28, 0x0

    const/16 v34, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    if-eqz v9, :cond_0

    const-string v3, "is_super_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_17

    move-object/from16 v28, v9

    :cond_1
    if-nez v28, :cond_2

    if-eqz v34, :cond_19

    move-object/from16 v28, v34

    :cond_2
    :goto_1
    const-string v3, "data3"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "data5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "data4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v3, "data6"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v17, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v19, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v23, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v27, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v35, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_4
    const/16 v32, 0x1

    :goto_2
    if-eqz v32, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v17, v3, v36

    const/16 v36, 0x1

    aput-object v19, v3, v36

    const/16 v36, 0x2

    aput-object v23, v3, v36

    const/16 v36, 0x3

    aput-object v27, v3, v36

    const/16 v36, 0x4

    aput-object v35, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v32, :cond_6

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v18, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/16 v31, 0x1

    :goto_4
    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_5
    const-string v3, "FN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v31, :cond_8

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_6
    const-string v3, "data9"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v3, "data8"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v3, "data7"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    if-eqz v3, :cond_b

    invoke-static/range {v24 .. v24}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v26 .. v26}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v3, v0, v1, v2}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v3, "SORT-STRING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    if-eqz v3, :cond_16

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v25, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    const/16 v29, 0x1

    :goto_8
    if-eqz v29, :cond_2c

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_9
    const-string v3, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz v29, :cond_f

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v26, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/16 v29, 0x1

    :goto_a
    if-eqz v29, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_b
    const-string v3, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz v29, :cond_12

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v24, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    const/16 v29, 0x1

    :goto_c
    if-eqz v29, :cond_30

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_d
    const-string v3, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    if-eqz v29, :cond_15

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void

    :cond_17
    if-nez v28, :cond_0

    const-string v3, "is_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/ui/VCardComposerMsg;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v28, v9

    goto/16 :goto_0

    :cond_18
    if-nez v34, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/ui/VCardComposerMsg;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v34, v9

    goto/16 :goto_0

    :cond_19
    const-string v3, "vcard.VCardComposerMsg"

    const-string v36, "All ContentValues given from database is empty."

    move-object/from16 v0, v36

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    goto/16 :goto_1

    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    :cond_1c
    const/16 v31, 0x0

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    :cond_1e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v10, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const/16 v30, 0x1

    :goto_e
    if-eqz v30, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_f
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    if-eqz v30, :cond_20

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_21
    const/16 v30, 0x0

    goto :goto_e

    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v3, :cond_24

    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v3, :cond_9

    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "FN"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_25
    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v24, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v26, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v25, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    const/16 v29, 0x1

    :goto_10
    if-eqz v29, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_11
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v13, v3, v36

    const/16 v36, 0x1

    aput-object v15, v3, v36

    const/16 v36, 0x2

    aput-object v14, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_10

    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_11

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v3, :cond_d

    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_2b
    const/16 v29, 0x0

    goto/16 :goto_8

    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_9

    :cond_2d
    const/16 v29, 0x0

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_b

    :cond_2f
    const/16 v29, 0x0

    goto/16 :goto_c

    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_d
.end method

.method private appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v0, :cond_0

    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "vcard.VCardComposerMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 v0, 0x3

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v2, "vcard.VCardComposerMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INTERNET"

    :goto_1
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_0
    const-string v2, "_AUTO_CELL"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "CELL"

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "INTERNET"

    goto :goto_1

    :pswitch_1
    const-string v1, "HOME"

    goto :goto_1

    :pswitch_2
    const-string v1, "WORK"

    goto :goto_1

    :pswitch_3
    const-string v1, "INTERNET"

    goto :goto_1

    :pswitch_4
    const-string v1, "CELL"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p5, :cond_1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHOTO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_1

    const-string v5, "ENCODING=b"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x48

    if-le v2, v5, :cond_0

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "ENCODING=BASE64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 18

    const-string v15, "ADR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/VCardComposerMsg;->getVCardPostalElements(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v12, 0x0

    move-object v3, v5

    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v4, v3, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const/4 v6, 0x1

    if-nez v12, :cond_0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v12, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const/4 v2, 0x1

    :cond_1
    array-length v10, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_5

    aget-object v4, v5, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    goto :goto_2

    :cond_5
    if-nez p2, :cond_d

    const/4 v13, 0x3

    :goto_3
    const/4 v14, 0x0

    packed-switch v13, :pswitch_data_0

    const-string v15, "vcard.VCardComposerMsg"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown StructuredPostal type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    :pswitch_0
    const/4 v11, 0x0

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_7
    if-eqz v6, :cond_b

    if-eqz v12, :cond_9

    if-eqz v11, :cond_8

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_9
    if-eqz v2, :cond_b

    if-eqz v11, :cond_a

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v15, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_c

    const/4 v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x2

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x4

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x5

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x6

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v15, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto/16 :goto_3

    :pswitch_1
    const-string v14, "HOME"

    goto/16 :goto_4

    :pswitch_2
    const-string v14, "WORK"

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v15, :cond_6

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p3, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "X-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    :goto_1
    :pswitch_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    :pswitch_3
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    :pswitch_4
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    :pswitch_5
    const-string v1, "CELL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "PAGER"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    aput-object p3, v1, v3

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private appendWebsites(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    const-string v4, "vnd.android.cursor.item/website"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "URL"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 7

    const-string v6, "data3"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "data5"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "data2"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "data4"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "data6"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data1"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string v5, ""

    :goto_0
    return-object v5

    :cond_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    new-array v1, v5, [C

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int v0, v5, v6

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    and-int/lit8 v6, v0, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_1
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    :goto_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :pswitch_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x10

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v4

    goto :goto_2

    :pswitch_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int v0, v5, v6

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v9, 0xa

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    :goto_0
    return-object v8

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0xd

    if-ne v0, v8, :cond_2

    add-int/lit8 v8, v2, 0x1

    if-ge v8, v4, :cond_1

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v9, :cond_3

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_5
    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_6

    const-string v8, "=%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-byte v11, v6, v3

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x3

    const/16 v8, 0x43

    if-lt v5, v8, :cond_5

    const-string v8, "=\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v8, "vcard.VCardComposerMsg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Charset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot be used. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Try default charset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5c

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
    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_3

    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_5
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_5

    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static getVCardPostalElements(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "data5"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aget-object v2, v0, v3

    if-nez v2, :cond_0

    const-string v2, ""

    aput-object v2, v0, v3

    :cond_0
    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    const-string v2, "data4"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aget-object v2, v0, v4

    if-nez v2, :cond_1

    const-string v2, ""

    aput-object v2, v0, v4

    :cond_1
    const-string v2, "data7"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aget-object v2, v0, v5

    if-nez v2, :cond_2

    const-string v2, ""

    aput-object v2, v0, v5

    :cond_2
    const-string v2, "data8"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    :goto_0
    const-string v2, "data9"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v2, v0, v6

    if-nez v2, :cond_3

    const-string v2, ""

    aput-object v2, v0, v6

    :cond_3
    const-string v2, "data10"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    aget-object v2, v0, v7

    if-nez v2, :cond_4

    const-string v2, ""

    aput-object v2, v0, v7

    :cond_4
    return-object v0

    :cond_5
    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method private shouldAppendCharsetAttribute(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private shouldAppendCharsetAttribute(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v4

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-nez v5, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private splitIfSeveralPhoneNumbersExist(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x3b

    if-eq v1, v5, :cond_2

    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v4
.end method


# virtual methods
.method public composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    const-string v2, "FN"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "N"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    const-string v2, "FN"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "N"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
