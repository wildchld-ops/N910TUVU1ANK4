.class public Lcom/android/mms/transaction/WapPushMessage;
.super Ljava/lang/Object;
.source "WapPushMessage.java"

# interfaces
.implements Lcom/android/mms/transaction/WBXmlMessage;


# static fields
.field public static final ATTRIBUTE_VALUE_TOKEN_COM:I = 0x85

.field public static final ATTRIBUTE_VALUE_TOKEN_EDU:I = 0x86

.field public static final ATTRIBUTE_VALUE_TOKEN_NET:I = 0x87

.field public static final ATTRIBUTE_VALUE_TOKEN_ORG:I = 0x88

.field public static final PREFIX_DEFAULT:Ljava/lang/String; = "http://"

.field public static final PREFIX_HTTP:Ljava/lang/String; = "http://"

.field public static final PREFIX_HTTPS:Ljava/lang/String; = "https://"

.field public static final PREFIX_HTTPS_WWW:Ljava/lang/String; = "https://www."

.field public static final PREFIX_HTTP_WWW:Ljava/lang/String; = "http://www."

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_DELETE:I = 0x9

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_HIGH:I = 0x8

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_LOW:I = 0x6

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_MEDIUM:I = 0x7

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_NONE:I = 0x5

.field public static final SI_ATTRIBUTE_START_TOKEN_CLASS:I = 0x12

.field public static final SI_ATTRIBUTE_START_TOKEN_CREATED:I = 0xa

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF:I = 0xb

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTP:I = 0xc

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTPS:I = 0xe

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTPS_WWW:I = 0xf

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTP_WWW:I = 0xd

.field public static final SI_ATTRIBUTE_START_TOKEN_SI_EXPIRES:I = 0x10

.field public static final SI_ATTRIBUTE_START_TOKEN_SI_ID:I = 0x11

.field public static final SI_TAG_TOKEN_INDICATION:I = 0x6

.field public static final SI_TAG_TOKEN_INFO:I = 0x7

.field public static final SI_TAG_TOKEN_ITEM:I = 0x8

.field public static final SI_TAG_TOKEN_SI:I = 0x5

.field public static final SL_ATTRIBUTE_START_TOKEN_ACTION_CACHE:I = 0x7

.field public static final SL_ATTRIBUTE_START_TOKEN_ACTION_EXECUTE_HIGH:I = 0x6

.field public static final SL_ATTRIBUTE_START_TOKEN_ACTION_EXECUTE_LOW:I = 0x5

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF:I = 0x8

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTP:I = 0x9

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTPS:I = 0xb

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTPS_WWW:I = 0xc

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTP_WWW:I = 0xa

.field public static final SL_PRIORITY_ACTION_CACHE:I = 0x3

.field public static final SL_PRIORITY_ACTION_EXECUTE_HIGH:I = 0x1

.field public static final SL_PRIORITY_ACTION_EXECUTE_LOW:I = 0x2

.field public static final SL_TAG_TOKEN_SL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/WapPushMessage"

.field public static final VALUE_COM:Ljava/lang/String; = ".com/"

.field public static final VALUE_EDU:Ljava/lang/String; = ".edu/"

.field public static final VALUE_NET:Ljava/lang/String; = ".net/"

.field public static final VALUE_ORG:Ljava/lang/String; = ".org/"


# instance fields
.field private OriginalAddress:Ljava/lang/String;

.field private action:I

.field private created:J

.field private encodingCharsetName:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private in:Ljava/io/ByteArrayInputStream;

.field protected mSimID:I

.field private publicId:I

.field private publicIdStr:Ljava/lang/String;

.field private siExpires:J

.field private siId:Ljava/lang/String;

.field private stringTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private wbxmlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    iput v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->publicIdStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    iput v0, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->OriginalAddress:Ljava/lang/String;

    return-void
.end method

.method private hasProtocol(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private parseDateTime()J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v9

    const/16 v3, 0xc3

    if-eq v9, v3, :cond_0

    new-instance v3, Ljava/io/UnsupportedEncodingException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported datetime encoding. datetime encoding= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", remainBytes ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v10

    const/4 v3, 0x2

    if-ge v10, v3, :cond_1

    new-instance v3, Lcom/google/android/mms/InvalidHeaderValueException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid datetime length. length= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_2

    packed-switch v12, :pswitch_data_0

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_1

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v13, -0x1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    const/4 v11, 0x0

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v14, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v14}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual {v14}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v16

    add-int v11, v3, v16

    :goto_2
    const/16 v3, 0xe

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v11}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    return-wide v16

    :cond_3
    invoke-virtual {v14}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parseSIAttr()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v8, -0x1

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v8

    :cond_1
    const/4 v5, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    return-void

    :cond_2
    packed-switch v8, :pswitch_data_0

    new-instance v9, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported attribute. attribute= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_0
    iput v8, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    goto :goto_0

    :pswitch_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v6}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    const/4 v5, 0x0

    const-string v9, "http://"

    invoke-virtual {v1, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    const/4 v5, 0x0

    const-string v9, "http://www."

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    const/4 v5, 0x0

    const-string v9, "https://"

    invoke-virtual {v3, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    const/4 v5, 0x0

    const-string v9, "https://www."

    invoke-virtual {v4, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseSLAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v6

    :cond_1
    const/4 v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    return-void

    :cond_2
    packed-switch v6, :pswitch_data_0

    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported attribute. attribute= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_0
    iput v6, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/WapPushMessage;->hasProtocol(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Mms/WapPushMessage"

    const-string v8, "WAP Sl message uses default protocol"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    const/4 v5, 0x0

    const-string v7, "http://"

    invoke-virtual {v1, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    const/4 v5, 0x0

    const-string v7, "http://www."

    invoke-virtual {v2, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    const/4 v5, 0x0

    const-string v7, "https://"

    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    const/4 v5, 0x0

    const-string v7, "https://www."

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseTag(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSIAttr()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSLAttr()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported operation. publicId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    return v1
.end method

.method private readOPAQUE()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readString(Ljava/lang/StringBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v0

    :sswitch_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_2
    const-string v4, ".com/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_3
    const-string v4, ".edu/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_4
    const-string v4, ".net/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_5
    const-string v4, ".org/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x83 -> :sswitch_1
        0x85 -> :sswitch_2
        0x86 -> :sswitch_3
        0x87 -> :sswitch_4
        0x88 -> :sswitch_5
    .end sparse-switch
.end method

.method public static slActionToPriority(I)I
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    return-wide v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->OriginalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    return v0
.end method

.method public getSiExpires()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    return-wide v0
.end method

.method public getSiId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->mSimID:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getWbxmlVersion()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    return v0
.end method

.method public parse([B)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    check-cast v14, [B

    invoke-direct {v15, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    if-nez v14, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v4

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v14, Ljava/io/UnsupportedEncodingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported encoding charset. charset= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v14}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    throw v2

    :sswitch_0
    :try_start_1
    const-string v14, "US-ASCII"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v6

    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    if-nez v8, :cond_1

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v5, v3

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v7

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v14, "ISO-8859-1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string v14, "UTF-8"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    sparse-switch v13, :sswitch_data_1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/WapPushMessage;->parseTag(I)V

    goto :goto_3

    :sswitch_4
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v11

    if-nez v11, :cond_6

    new-instance v14, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6a -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_4
        0x83 -> :sswitch_5
    .end sparse-switch
.end method

.method public parsepushaddress(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "origaddr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->OriginalAddress:Ljava/lang/String;

    return-void
.end method

.method public setSimIdentifier(I)V
    .locals 3

    const-string v0, "gsm/WapPushMessage _ MULTISIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIdentifier() simId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/mms/transaction/WapPushMessage;->mSimID:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0x3a

    const/16 v9, 0x2d

    const/16 v8, 0x9

    const/16 v7, 0xa

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "WapPushMessage = {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "wbxmlVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "publicId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siExpires= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "action= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "href= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "text= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
