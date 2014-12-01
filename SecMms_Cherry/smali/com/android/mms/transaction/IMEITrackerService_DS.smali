.class public Lcom/android/mms/transaction/IMEITrackerService_DS;
.super Landroid/app/Service;
.source "IMEITrackerService_DS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/IMEITrackerService_DS$ServiceHandler;,
        Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;
    }
.end annotation


# static fields
.field static CanSendMessage:Z = false

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field static IMSI_new:Ljava/lang/String; = null

.field public static final KEY_READ_WRITE:Ljava/lang/String; = "serverNo"

.field public static final MAX_RETRY_ATTEMPTS:I = 0x3

.field public static final OPCODE:Ljava/lang/String; = "op"

.field public static final OP_BOOT_COMPLETED:I = 0x1

.field public static final OP_DEFAULT_SIM_CHANGED:I = 0x3

.field public static final OP_SMS_RECEIVED:I = 0x2

.field static final PDUS_LOCAL:Ljava/lang/String; = "pduslocal"

.field public static final PREFS_READ_WRITE:Ljava/lang/String; = "imeiServerNo"

.field private static Sim0MsgSent:Z = false

.field private static Sim1MsgSent:Z = false

.field static SimID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ITS"

.field private static bootCompleted:Z

.field static messagePass:Ljava/lang/Boolean;

.field static messagePassSim0:Ljava/lang/Boolean;

.field static messagePassSim1:Ljava/lang/Boolean;

.field static message_decrypted:Ljava/lang/String;

.field static message_encrypted:Ljava/lang/String;

.field public static msgSendingAttempt_Sim0:I

.field public static msgSendingAttempt_Sim1:I

.field static operatorName:Ljava/lang/String;

.field static sInstance:Lcom/android/mms/transaction/IMEITrackerService_DS;


# instance fields
.field defaultServerNo:Ljava/lang/String;

.field private deliveredReceiver:Landroid/content/BroadcastReceiver;

.field public insertedSimCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private volatile mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService_DS$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field public mServiceState:Landroid/telephony/ServiceState;

.field final numberOfSIM:Ljava/lang/String;

.field private sentReceiver:Landroid/content/BroadcastReceiver;

.field public final tm0:Landroid/telephony/TelephonyManager;

.field public final tm1:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->sInstance:Lcom/android/mms/transaction/IMEITrackerService_DS;

    sput-boolean v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->bootCompleted:Z

    sput-boolean v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim0MsgSent:Z

    sput-boolean v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim1MsgSent:Z

    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->operatorName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->IMSI_new:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePass:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim0:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim1:Ljava/lang/Boolean;

    const-string v0, " "

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->message_encrypted:Ljava/lang/String;

    const-string v0, " "

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->message_decrypted:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->CanSendMessage:Z

    sput v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    sput v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "+919560345888"

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->defaultServerNo:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->numberOfSIM:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm0:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm1:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/IMEITrackerService_DS;Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/IMEITrackerService_DS;->sendIMEITrackerMsgIfNeeded(Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim0MsgSent:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim0MsgSent:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim1MsgSent:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim1MsgSent:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/IMEITrackerService_DS;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService_DS;->updateRecord(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/IMEITrackerService_DS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/IMEITrackerService_DS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3

    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/transaction/IMEITrackerService_DS;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->decrypt([B[B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method private static decrypt([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v2, "ITS_DS"

    const-string v3, "encrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/transaction/IMEITrackerService_DS;->encrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/IMEITrackerService_DS;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static encrypt([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v3, "ITS_DS"

    const-string v4, "encrypt2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private getIMSI(I)Ljava/lang/String;
    .locals 4

    const-string v2, "IMEITrackerPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "NULL"

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v2, "IMSI_FIRST"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v2, "IMSI_SECOND"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v2, "IMSI_THIRD"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v2, "IMSI_FOURTH"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string v2, "IMSI_LAST"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static getInstance()Lcom/android/mms/transaction/IMEITrackerService_DS;
    .locals 2

    const-string v0, "ITS_DS"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->sInstance:Lcom/android/mms/transaction/IMEITrackerService_DS;

    return-object v0
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8

    const/4 v2, 0x0

    const-string v6, "ITS_DS"

    const-string v7, "getMessagesFromIntent enter"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "pduslocal"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v6, v1

    if-eqz v6, :cond_0

    array-length v6, v1

    new-array v4, v6, [[B

    const/4 v0, 0x0

    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_2

    aget-object v6, v1, v0

    check-cast v6, [B

    check-cast v6, [B

    aput-object v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v6, v4

    new-array v5, v6, [[B

    array-length v3, v5

    new-array v2, v3, [Landroid/telephony/SmsMessage;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v6, v4, v0

    aput-object v6, v5, v0

    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v6, "ITS_DS"

    const-string v7, "getMessagesFromIntent exit"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getRawKey([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v4, "ITS_DS"

    const-string v5, "getRawKey"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    return-object v1
.end method

.method private getServerNumbFromLocalSharePref()Ljava/lang/String;
    .locals 4

    const-string v2, "IMEITrackerPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SERVER_NUMBER"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendIMEITrackerMsgIfNeeded(Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    const-string v7, "ITS_DS"

    const-string v8, "SIM is ready"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->getServerNumbFromLocalSharePref()Ljava/lang/String;

    move-result-object v5

    const-string v7, "NULL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->defaultServerNo:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->defaultServerNo:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/IMEITrackerService_DS;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V

    :cond_0
    const-string v7, "ITS_DS"

    const-string v8, "serverNumber : "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->IMSI_new:Ljava/lang/String;

    sget-object v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->IMSI_new:Ljava/lang/String;

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v7, "ITS_DS"

    const-string v8, "SIM_new"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->createMessage()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v7, "samsungimeitrack"

    invoke-static {v7, v3}, Lcom/android/mms/transaction/IMEITrackerService_DS;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->message_encrypted:Ljava/lang/String;

    const-string v7, "ITS_DS"

    const-string v8, "message_encrypted : "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v1, -0x1

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v7, "ITS_DS"

    const-string v8, "Native layer exception found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService_DS;->IMSI_new:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move v1, v6

    const-string v7, "ITS"

    const-string v8, "Current Sim\'s value is already stored"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    if-nez v7, :cond_6

    sget v4, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    :goto_3
    const-string v7, "ITS_DS"

    const-string v8, "isIMSIsaved:"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePass:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x3

    if-ge v4, v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMEI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService_DS;->message_encrypted:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/mms/transaction/IMEITrackerService_DS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    sget v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    if-nez v7, :cond_7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim0:Ljava/lang/Boolean;

    sget v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    goto/16 :goto_0

    :cond_6
    sget v4, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    goto :goto_3

    :cond_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim1:Ljava/lang/Boolean;

    sget v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    goto/16 :goto_0

    :cond_8
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService_DS;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/IMEITrackerService_DS;->updateRecord(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    const/high16 v3, 0x8000000

    const-string v1, "ITS_DS"

    const-string v2, "sendSMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p2

    move-object v8, p1

    const-string v9, "SMS_SENT"

    const-string v6, "SMS_DELIVERED"

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "SimID"

    sget v2, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IMSInew"

    sget-object v2, Lcom/android/mms/transaction/IMEITrackerService_DS;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    if-nez v1, :cond_0

    sput-boolean v12, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim0MsgSent:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p0, v1, v11, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p0, v1, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    :goto_0
    new-instance v1, Lcom/android/mms/transaction/IMEITrackerService_DS$1;

    invoke-direct {v1, p0, v8, v7}, Lcom/android/mms/transaction/IMEITrackerService_DS$1;-><init>(Lcom/android/mms/transaction/IMEITrackerService_DS;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->sentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/mms/transaction/IMEITrackerService_DS$2;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/IMEITrackerService_DS$2;-><init>(Lcom/android/mms/transaction/IMEITrackerService_DS;)V

    iput-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->deliveredReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->sentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->deliveredReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    packed-switch v1, :pswitch_data_0

    invoke-static {v12}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const-string v1, "ITS_DS"

    const-string v2, "sendTextMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-boolean v12, Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim1MsgSent:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p0, v1, v11, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p0, v1, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/android/mms/transaction/IMEITrackerService_DS;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateRecord(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "IMEITrackerPrefs"

    invoke-virtual {p0, v4, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x1

    :goto_0
    if-gt v0, v3, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v4, "IMSI_FIRST"

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "ITS_DS"

    const-string v5, "FIRST:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const-string v4, "IMSI_SECOND"

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "ITS_DS"

    const-string v5, "SECOND:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    const-string v4, "IMSI_THIRD"

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "ITS_DS"

    const-string v5, "THIRD:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    const-string v4, "IMSI_FOURTH"

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "ITS_DS"

    const-string v5, "FOURTH:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    const-string v4, "IMSI_LAST"

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "ITS_DS"

    const-string v5, "LAST:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateServerNumbToLocalSharePref(Ljava/lang/String;)V
    .locals 4

    const-string v2, "IMEITrackerPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SERVER_NUMBER"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private waitForLooper()V
    .locals 2

    const-string v0, "ITS_DS"

    const-string v1, "waitForLooper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService_DS$ServiceHandler;

    if-nez v0, :cond_0

    monitor-enter p0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void
.end method


# virtual methods
.method public createMessage()Ljava/lang/String;
    .locals 14

    const/4 v13, 0x3

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "gsm.version.baseband"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-le v11, v12, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x5

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v11, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    if-nez v11, :cond_3

    iget-object v10, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm0:Landroid/telephony/TelephonyManager;

    :goto_1
    iget-object v11, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm0:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v13, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-object v11, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "ITS_DS"

    const-string v12, "message"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    if-eqz v3, :cond_0

    const-string v11, "ITS_DS"

    const-string v12, "baseBandVersion1.length="

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm1:Landroid/telephony/TelephonyManager;

    goto :goto_1
.end method

.method public getserverNumber()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "com.sec.android.app.servicemodeapp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "NULL"

    if-eqz v0, :cond_0

    const-string v3, "imeiServerNo"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "serverNo"

    const-string v4, "NULL"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v1, "ITS_DS"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "IMEITrackerService_DS"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->sInstance:Lcom/android/mms/transaction/IMEITrackerService_DS;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ITS_DS"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->waitForLooper()V

    iget-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 28

    const-string v25, "ITS_DS"

    const-string v26, "onStart"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMessageConfigImeiTracker()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMessageConfigImeiTracker()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMessageConfigImeiTracker()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->defaultServerNo:Ljava/lang/String;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->waitForLooper()V

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService_DS$ServiceHandler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    const-string v25, "op"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    iput v0, v12, Landroid/os/Message;->arg1:I

    const-string v25, "persist.radio.calldefault.simid"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    sput v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    const/16 v19, 0x1

    :goto_1
    const/16 v25, 0x5

    move/from16 v0, v19

    move/from16 v1, v25

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/IMEITrackerService_DS;->getIMSI(I)Ljava/lang/String;

    move-result-object v3

    const-string v25, "NULL"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_3
    iget v0, v12, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->bootCompleted:Z

    const-string v25, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    new-instance v11, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;-><init>(Lcom/android/mms/transaction/IMEITrackerService_DS;Lcom/android/mms/transaction/IMEITrackerService_DS$1;)V

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0

    :pswitch_1
    const-string v25, "ITS_DS"

    const-string v26, "OP_SMS_RECEIVED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/IMEITrackerService_DS;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v10

    if-eqz v10, :cond_1

    array-length v0, v10

    move/from16 v25, v0

    if-lez v25, :cond_1

    const-string v25, "ITS_DS"

    const-string v26, "messages[0] : "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    aget-object v25, v10, v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    const-string v25, "ITS_DS"

    const-string v26, "First char "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    :try_start_0
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1c

    const-string v23, "0x00C6"

    const-string v24, "C6"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_1

    :cond_4
    const/16 v25, 0x0

    aget-object v25, v10, v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    const-string v25, "ITS_DS"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "receivedSMS.length() : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0xa

    move/from16 v0, v25

    if-le v8, v0, :cond_5

    const/16 v25, 0x2

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v25, "VNCHANGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    const-string v25, "ITS_DS"

    const-string v26, "VNCHANGE message"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/IMEITrackerService_DS;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V

    const-string v25, "ITS_DS"

    const-string v26, "Update server number : "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v25, "ITS_DS"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NumberFormatException : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v25, 0x9

    move/from16 v0, v25

    if-ne v8, v0, :cond_1

    const/16 v25, 0x2

    const/16 v26, 0x9

    :try_start_1
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const-string v25, "TRIGGER"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    const-string v25, "ITS_DS"

    const-string v26, "TRIGGER message"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->getServerNumbFromLocalSharePref()Ljava/lang/String;

    move-result-object v18

    const-string v25, "NULL"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->defaultServerNo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->defaultServerNo:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/IMEITrackerService_DS;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V

    :cond_6
    const/16 v20, 0x0

    sget v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    if-nez v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm0:Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0

    const/16 v25, 0x1

    sput v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/IMEITrackerService_DS;->createMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :try_start_2
    const-string v25, "samsungimeitrack"

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lcom/android/mms/transaction/IMEITrackerService_DS;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->message_encrypted:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :try_start_3
    const-string v25, "ITS_DS"

    const-string v26, "sendSMS to servernumber : "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IMEI "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/mms/transaction/IMEITrackerService_DS;->message_encrypted:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/IMEITrackerService_DS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm1:Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0

    const/16 v25, 0x1

    sput v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v25, "ITS_DS"

    const-string v26, "exception found"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :pswitch_2
    sget-boolean v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->bootCompleted:Z

    if-nez v25, :cond_8

    const-string v25, "ITS_DS"

    const-string v26, "Boot not complete"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v25, "persist.radio.calldefault.simid"

    const/16 v26, -0x1

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    sput v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    const-string v25, "ITS_DS"

    const-string v26, "Default SIM state changed.Default Sim ID:"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    sget v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm0:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    sget-object v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim0:Ljava/lang/Boolean;

    sput-object v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePass:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/IMEITrackerService_DS;->sendIMEITrackerMsgIfNeeded(Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm1:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    sget-object v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim1:Ljava/lang/Boolean;

    sput-object v25, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePass:Ljava/lang/Boolean;

    goto :goto_4

    :cond_a
    const-string v25, "ITS_DS"

    const-string v26, "Sim is absent"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 2

    const-string v0, "ITS_DS"

    const-string v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/mms/transaction/IMEITrackerService_DS$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/IMEITrackerService_DS$ServiceHandler;-><init>(Lcom/android/mms/transaction/IMEITrackerService_DS$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService_DS$ServiceHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public updateSeverNumber(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "com.sec.android.app.servicemodeapp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v3, "imeiServerNo"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "KEY_READ_WRITE"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
