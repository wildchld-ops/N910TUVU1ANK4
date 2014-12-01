.class public Lcom/android/mms/transaction/SmsSingleRecipientSender;
.super Lcom/android/mms/transaction/SmsMessageSender;
.source "SmsSingleRecipientSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SmsSingleRecipientSender"


# instance fields
.field private mDest:Ljava/lang/String;

.field private mPriority:I

.field private final mRequestDeliveryReport:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    iput-boolean p6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    iput-object p2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    iput-boolean p6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    iput-object p2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    iput p8, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsSingleRecipientSender priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V

    iput-object p8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    iput p9, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    return-void
.end method

.method private EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    if-nez v7, :cond_5

    move-object v0, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3130

    if-ge v7, v6, :cond_0

    const/16 v7, 0x318d

    if-lt v6, v7, :cond_1

    :cond_0
    const v7, 0xabff

    if-ge v7, v6, :cond_2

    const v7, 0xd7a4

    if-ge v6, v7, :cond_2

    :cond_1
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    move-object v2, p1

    :goto_1
    return-object v2

    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    const v7, 0xfeff

    if-ne v7, v5, :cond_3

    const/16 v5, 0x3f

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Unavialable to show"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v2, p1

    goto :goto_1
.end method

.method private convertSMSAddress()Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v4, Landroid/telephony/PhoneNumberUtils;

    const-string v5, "convertSMSDestinationAddress"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v0, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "convertSMSAddress() result is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    iput-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move v2, v3

    goto :goto_0
.end method

.method private createMessages(Landroid/telephony/SmsManager;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getEmailLen()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->fragmentTextWithEmail(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "createMessages 2) IS41 Email : CDMA sendMessage"

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->divideMessageWithIS41Email(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 3) CDMA Alias destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 4) CDMA Email destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->divideMessageWithEmailCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "SmsMessageSender.sendMessage: address checking falied"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKsc5601()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 5) CDMA phone number destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Landroid/telephony/TelephonyManager;->isCDMAMessage:Z

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    sput-boolean v2, Landroid/telephony/TelephonyManager;->isCDMAMessage:Z

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaximumEmailAddressLength()I

    move-result v3

    if-le v2, v3, :cond_a

    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "SmsMessageSender.sendMessage: divideMessage returned wrong address"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 6) GSM Email destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->divideMessageWithEmailCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKsc5601()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 7) GSM phone number destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    invoke-virtual {p1, v2, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3
.end method

.method private divideMessageWithEmailCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    iget v9, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-static {p1, v9, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    :goto_0
    iget v9, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    const/4 v3, 0x7

    :goto_1
    const/4 v9, 0x3

    new-array v2, v9, [I

    iget v9, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    rsub-int v10, v3, 0x8c

    div-int/lit8 v10, v10, 0x2

    aput v10, v2, v9

    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x7e

    div-int/lit8 v10, v10, 0x2

    aput v10, v2, v9

    const/4 v9, 0x2

    const/16 v10, 0x4c

    aput v10, v2, v9

    :goto_2
    if-lez v0, :cond_3

    const/4 v1, 0x0

    :goto_3
    array-length v9, v2

    if-ge v1, v9, :cond_3

    aget v9, v2, v1

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    aput v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    const/4 v9, 0x0

    invoke-static {p1, v9, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    rsub-int v10, v3, 0xa0

    aput v10, v2, v9

    const/4 v9, 0x1

    add-int/lit16 v10, v3, 0x92

    aput v10, v2, v9

    const/4 v9, 0x2

    const/16 v10, 0x99

    aput v10, v2, v9

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v9, v8, -0x1

    if-gt v5, v9, :cond_5

    aget v9, v2, v1

    sub-int v10, v8, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int v4, v5, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    move v5, v4

    goto :goto_4

    :cond_5
    return-object v6
.end method

.method private divideMessageWithIS41Email(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    invoke-static {p1, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    aget v8, v1, v8

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aget v8, v1, v9

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/16 v2, 0xa0

    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v8, v9, :cond_0

    const/16 v2, 0x46

    :cond_0
    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    sub-int v8, v2, v0

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v8, -0x7

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v5, Ljava/util/ArrayList;

    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v4, v7, :cond_2

    sub-int v8, v7, v4

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method private getEmailLen()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSendInfoLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "[SendInfo]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "uri:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ",destLen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", txtLen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", encLen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", userEnc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", isEml:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", isAl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", 7bit:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", isGrk:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", isCd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", hasEmailGate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", useSegSms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", useSmsExp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", is41:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsSingleRecipientSender] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fragmentTextWithEmail(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v7}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {p1, v8, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    :goto_0
    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v7, v10, :cond_5

    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_4

    const/16 v1, 0x40

    :goto_1
    if-lez p2, :cond_0

    sub-int v7, v1, p2

    add-int/lit8 v1, v7, -0x1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v0, 0x1

    new-instance v4, Ljava/util/ArrayList;

    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v3, v6, :cond_2

    const/4 v2, 0x0

    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v7}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v7

    if-eqz v7, :cond_7

    sub-int v7, v6, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v2, v3, v7

    :goto_3
    if-le v2, v3, :cond_1

    if-le v2, v6, :cond_9

    :cond_1
    const-string v7, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SmsSingleRecipientSender] fragmentText failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v4

    :cond_3
    invoke-static {p1, v8, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    goto :goto_0

    :cond_4
    const/16 v1, 0x9a

    goto :goto_1

    :cond_5
    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_6

    const/16 v1, 0x46

    goto :goto_1

    :cond_6
    const/16 v1, 0xa0

    goto :goto_1

    :cond_7
    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_8

    sub-int v7, v6, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v2, v3, v7

    goto :goto_3

    :cond_8
    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p1, v3, v1, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    goto :goto_3

    :cond_9
    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v7, v10, :cond_a

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move v3, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public sendMessage(J)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Null message body or have multiple destinations."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/GreekInputHandler;->EncodeGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v4, v8}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getSendInfoLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage() mSimSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v3}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->createMessages(Landroid/telephony/SmsManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    const-string v3, "Mms/SmsSingleRecipientSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multi part count = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v20, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptySms()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {v3, v4, v8, v9}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    :goto_2
    if-nez v21, :cond_5

    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessageSender.sendMessage: couldn\'t move message to outbox: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessageSender.sendMessage: divideMessage returned empty messages. Original message is \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v16

    const-string v3, "Mms/SmsSingleRecipientSender"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v4, v8, v9, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string v3, "Mms/SmsSingleRecipientSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted invalid data:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",count="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v15

    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "Got exception while deleting"

    invoke-static {v3, v4, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    if-eqz v3, :cond_6

    add-int/lit8 v3, v20, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivery report uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v25, Lcom/android/mms/transaction/MessageStatusReceiver;

    move-object/from16 v0, v25

    invoke-direct {v8, v9, v10, v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    invoke-static {v3, v4, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_SENT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/mms/transaction/SmsReceiver;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v23, 0x0

    add-int/lit8 v3, v20, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_7

    const/16 v23, 0x1

    const-string v3, "SendNextMsg"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmd:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "SmsReadConfirmMsg"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "simSlot"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getExpiryTime(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    :cond_b
    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CANADA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v3, "Mms/SmsSingleRecipientSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Validity Period = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pref_key_validity_period"

    const/16 v4, 0xff

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "IS41 Email and Segmented SMS2"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "Sprint fragment email address"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    new-instance v4, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    :cond_e
    :try_start_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmd:I

    packed-switch v3, :pswitch_data_0

    :cond_f
    :goto_6
    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "CDMA Priority or CallBack Number multi Part sending"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    invoke-virtual/range {v2 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage: address=XXXXXXX, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgs.count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13, v8}, Lcom/android/mms/reflector/AmbsReflector;->onSendingMessage(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_11
    const/4 v3, 0x0

    return v3

    :pswitch_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##4323"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v16

    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessageSender.sendMessage: caught "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " from SmsManager.sendTextMessage()"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##4325"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##4324"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "#431"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "CDMA default or Sprint Segmented Message"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "CDMA default or Sprint Segmented Message"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :cond_14
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmd:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mReplyPath:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceType:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    invoke-virtual/range {v2 .. v12}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mReplyPath:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceType:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    goto/16 :goto_7

    :cond_16
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "GSM multi Part sending"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "GSM CONFIG_REPLY_PATH_FEATURE || CONFIG_GSM7BIT_INPUT_METHOD_FEATURE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mReplyPath:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceType:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
