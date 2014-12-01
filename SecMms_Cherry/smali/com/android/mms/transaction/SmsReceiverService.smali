.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;,
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "com.android.mms.transaction.SEND_MESSAGE"

.field private static final ADDRESS_TRANSLATION_FAILURE_S:I = 0x1

.field private static final ADDRESS_VACANT_S:I = 0x0

.field private static final APP_ID_PICMSG:I = 0xcad

.field private static final APP_ID_VOCMSG:I = 0xcae

.field private static final CB_MY_CHANNEL_MAX_COUNT_PREFIXED:I = 0x3e8

.field public static final CLASS_ZERO_BODY_KEY:Ljava/lang/String; = "CLASS_ZERO_BODY"

.field public static final DELIM:Ljava/lang/String; = "/"

.field private static final ERROR_CLASS_NONE:I = 0x0

.field public static final EXTRA_LAST_SENT_MSG:Ljava/lang/String; = "LastSentMsg"

.field public static final EXTRA_MESSAGE_SENT_SEND_NEXT:Ljava/lang/String; = "SendNextMsg"

.field public static final EXTRA_MESSAGE_SENT_SMS_READCONFIRM_MSG:Ljava/lang/String; = "SmsReadConfirmMsg"

.field public static final EXTRA_SEND_MESSAGE_INTERNATIONAL_ROAM:Ljava/lang/String; = "AutoSendWhenInDomesticCoverage"

.field private static final GROUP_SEND_LAST:I = 0x2

.field private static final GROUP_SEND_MORE:I = 0x1

.field private static final GROUP_SEND_SINGLE:I = 0x0

.field private static final GROUP_SMS_COLUMN_GROUP_ID:I = 0x1

.field private static final GROUP_SMS_COLUMN_TYPE:I = 0x0

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field private static final MOBILBOX_PRO_APP_PACKAGE:Ljava/lang/String; = "de.telekom.mds.mbp"

.field private static final NETWORK_RESOURCE_SHORTAGE_S:I = 0x2

.field private static final NO_ACK:I = 0x22

.field private static final OTHER_GENERAL_PROBLEMS_MORE_FIRST_S:I = 0x6c

.field private static final OTHER_NETWORK_PROBLEM_MORE_LAST_S:I = 0x1f

.field public static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final SAFETY_MESSAGE_KIDS_SAFE_ADDRESS:Ljava/lang/String; = "address"

.field private static final SAFETY_MESSAGE_SEND_KIDS_SAFE:Ljava/lang/String; = "android.intent.action.SAFETY_MESSAGE_SEND_KIDS_SAFE"

.field private static final SEND_COLUMN_ADDRESS:I = 0x2

.field private static final SEND_COLUMN_BODY:I = 0x3

.field private static final SEND_COLUMN_CALLBACK_NUMBER:I = 0x5

.field private static final SEND_COLUMN_GROUP_ID:I = 0x6

.field private static final SEND_COLUMN_ID:I = 0x0

.field private static final SEND_COLUMN_PRIORITY:I = 0x6

.field private static final SEND_COLUMN_SIM_SLOT:I = 0x7

.field private static final SEND_COLUMN_STATUS:I = 0x4

.field private static final SEND_COLUMN_SVC_CMD:I = 0x7

.field private static final SEND_COLUMN_SVC_CMD_CONTENT:I = 0x8

.field private static final SEND_COLUMN_THREAD_ID:I = 0x1

.field private static final SEND_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION_FOR_SVC_CMD:[Ljava/lang/String;

.field private static final SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String;

.field private static final SMS_DISCARD_NUMBER_FOR_DT:Ljava/lang/String; = "3311"

.field private static final SMS_DISCARD_PREFIX_FOR_DT:Ljava/lang/String; = "Mobilbox Pro"

.field private static final SMS_ORIGINATION_DENIED_S:I = 0x61

.field private static final TAG:Ljava/lang/String; = "Mms/SmsReceiverService"

.field private static final TELESERVICE_LGT_ETC_SHARE_49162:I = 0xc00a

.field private static final TELESERVICE_LGT_WAP_URL_NOTI_49166:I = 0xc00e

.field private static final TELESERVICE_LGT_WAP_URL_NOTI_49167:I = 0xc00f

.field private static final TELESERVICE_LGT_WAP_URL_NOTI_49168:I = 0xc010

.field private static final TENCENT_CLASS:Ljava/lang/String; = "com.tencent.engine.ServiceEnabler"

.field private static final TERMINATION_DENIED_S:I = 0x62

.field private static final USER_DATA_SIZE_ERROR_S:I = 0x64

.field public static final VALIDITY_PERIOD:Ljava/lang/String; = "android.intent.action.VALIDITY_PERIOD"

.field public static lastFailedMsdId:J

.field private static mInsertedSimNum:I

.field private static mIsBootCompleted:Z

.field private static mSeviceState1:I

.field private static mSeviceState2:I

.field public static sRetryCount:I

.field private static sSending:Z


# instance fields
.field private final GROUP_SMS_PROJECTION:[Ljava/lang/String;

.field private mCausecode:I

.field private mGroupSendingStatus:I

.field private mMessage:Ljava/lang/String;

.field mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipient:Ljava/lang/String;

.field private mResultCode:I

.field private mServiceEnabler:Ljava/lang/Object;

.field private mServiceEnablerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToastHandler:Landroid/os/Handler;

.field protected userSelectedEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput v3, Lcom/android/mms/transaction/SmsReceiverService;->sRetryCount:I

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "roam_pending"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "svc_cmd"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "svc_cmd_content"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_FOR_SVC_CMD:[Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    sput v3, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    sput v3, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->mIsBootCompleted:Z

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnablerClass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnabler:Ljava/lang/Object;

    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Lcom/android/mms/transaction/SmsReceiverService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$7;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$7;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    iget v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    if-nez v7, :cond_5

    move-object v0, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

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

    iput v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    move-object v2, p1

    :goto_1
    return-object v2

    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

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

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v0, 0x0

    add-int/lit8 v3, v1, 0x1

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleValidityPeriod(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWUnlockMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceivedNonDefault(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/transaction/SmsReceiverService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleRoamingCdmaSmsPref(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->isRoamGuardPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleRoamingStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private clearCBMessages()V
    .locals 5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "read= 0 and protocol= 5"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Ljava/lang/String;I)V
    .locals 6

    const/4 v3, 0x0

    aget-object v1, p2, v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLmsReassembleTimeoutsCTC()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/android/mms/transaction/SmsReceiverService;->findFirstValidMessage([Landroid/telephony/SmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v1

    :cond_0
    invoke-static {p2}, Lcom/android/mms/transaction/SmsReceiverService;->mergeAndTidyDisplayMessageBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v4, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "pdu"

    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "format"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x18000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "simSlot"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v3

    goto :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ril.sms.gcf-mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "On"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getOriginatingAddress() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsServerTime()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "date"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    const-string v3, "date_sent"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractContentValues priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pri"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v3, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "sim_slot"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sim_imsi"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1

    :cond_4
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getDisplayOriginatingAddress(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "address"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "address"

    const v4, 0x7f0c013b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1
.end method

.method private static findFirstValidMessage([Landroid/telephony/SmsMessage;)Landroid/telephony/SmsMessage;
    .locals 5

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleBootCompleted()V
    .locals 15

    const-wide/16 v13, -0x1

    const-wide/16 v1, -0x3

    const/4 v12, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/SmsReceiverService"

    const-string v4, "handleBootCompleted()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mIsBootCompleted:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handleBootCompleted is already done! ignored!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sput-boolean v12, Lcom/android/mms/transaction/SmsReceiverService;->mIsBootCompleted:Z

    invoke-direct {p0, v12}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/data/Conversation;->deleteTempConversation()V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToFailedBox()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    :cond_2
    const-string v0, "Mms/SmsReceiverService"

    const-string v4, "handle boot completed, sendFirstQueuedMessage()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    const/4 v6, -0x3

    move-object v0, p0

    move-wide v4, v1

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v11

    const-class v0, Landroid/telephony/SmsManager;

    const-string v1, "setCDMASmsReassembly"

    new-array v2, v12, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v11, :cond_3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "pref_key_sms_reassembly"

    invoke-interface {v10, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v11, v9, v0}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handleBootCompleted()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v6, -0x1

    move-object v0, p0

    move-wide v1, v13

    move-wide v4, v13

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    goto :goto_1
.end method

.method private handleCbSettingsAvailable(Landroid/content/Intent;)V
    .locals 21

    const-string v18, "simSlot"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsManager;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v18, "Mms/SmsReceiverService"

    const-string v19, "smsManager.getCbSettings() = null."

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x3e8

    :cond_0
    :goto_0
    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v11

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v18

    sput v18, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v18

    if-eqz v18, :cond_1

    sget v18, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_2
    if-eqz v16, :cond_6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pref_cb_my_channel_enabled_count_sim"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v16, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pref_cb_my_channel_max_count_sim"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v16, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v8, v12, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v13, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    const-string v18, "pref_sim_ready_status"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move/from16 v0, v16

    invoke-static {v4, v14, v0}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    return-void

    :cond_3
    iget-char v15, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getChannels(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;I)I

    move-result v6

    :try_start_0
    const-string v18, "Mms/SmsReceiverService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "curChCount = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "curCheckedChCount = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "Mms/SmsReceiverService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "simChMaxCount = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "cbConfig.msgIdCount = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move/from16 v0, v18

    if-le v0, v15, :cond_4

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v11

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_4

    aget-short v18, v11, v10

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v4, v0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;III)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_3
    iget v0, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    iget-object v0, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_5

    iget-object v0, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v9

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v4, v0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;III)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v9

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v4, v0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v18

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v18

    :cond_6
    const-string v18, "pref_cb_my_channel_enabled_count"

    array-length v0, v11

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "pref_cb_my_channel_max_count"

    move-object/from16 v0, v18

    invoke-interface {v8, v0, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "getRsp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "[CB] error code = Unknown Object received "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "setRsp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "[CB] error code = Unknown Object received "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePCWLockMessage(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x14

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_pcw_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCW LOCK. Send Lock message. BootComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0196

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0195

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private handlePCWUnlockMessage()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "PCW UNLOCK. Send UnLock message. "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0197

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private handleRoamingCdmaSmsPref(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "simSlot"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/mms/util/TelephonyUtils;->isCdmaRoamingActive(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v1, v7, :cond_0

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "putInt CDMA_ROAMING_ACTIVE_NOT_SENT_CDMA_SMS"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "putInt CDMA_ROAMING_NOT_ACTIVE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private handleRoamingStatusChanged(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    if-nez v0, :cond_0

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handle roaming stat chaged, sendFirstQueuedMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->unRegisterForRoamingStatusChanges(Landroid/content/Context;)V

    return-void
.end method

.method private handleSIMStatus(Landroid/content/Intent;)V
    .locals 7

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSIMStatus()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSIMStatus(): SIM_STATUS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "pref_sim_ready_status"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "pref_sim_ready_status"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    const-string v4, "LOADED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->setContactMatchCliDigit(I)V

    goto :goto_0
.end method

.method private handleSendMessage()V
    .locals 3

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessage mSending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    :cond_0
    return-void
.end method

.method private handleSendMessage(I)V
    .locals 3

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessage sSending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    if-gt v2, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const-string v2, "simSlot"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMS]handleServiceStateChanged() simSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v5, :cond_3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    :goto_0
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "serive state changed, sendFirstQueuedMessage()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    goto :goto_0

    :cond_4
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "serive state changed, not default sms app"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "serive state changed, sendFirstQueuedMessage()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto :goto_1

    :cond_6
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "serive state changed, not default sms app"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSharingTidMessage(Landroid/telephony/SmsMessage;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSharedCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_1

    :cond_0
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sharing tid message~~! invalid appId"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.lgt.action.APM_START_APP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "tid"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "message"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "cmd"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "appId"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "payload"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sharing tid message~~! unsupported cmd"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "save sharing tid message~~!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sharing tid message~~! cmd is invalid"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleSmsCbReceived(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "simSlot"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v5, "pref_key_cb_settings_activation_sim2"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    const-string v5, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MmsConfig.getEnableCBMessage()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v5, "pref_key_cb_settings_activation"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v5, "Mms/SmsReceiverService"

    const-string v6, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p0, v1, v4}, Lcom/android/mms/transaction/SmsReceiverService;->storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0, v2, v8, v9, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    goto :goto_1

    :cond_5
    invoke-static {p0, v2, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto :goto_1
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 33

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSmsReceived()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v6

    const-string v4, "format"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v30, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "simSlot"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    :cond_0
    const/4 v4, 0x0

    aget-object v26, v6, v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLmsReassembleTimeoutsCTC()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6}, Lcom/android/mms/transaction/SmsReceiverService;->findFirstValidMessage([Landroid/telephony/SmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v26

    :cond_1
    if-nez v26, :cond_3

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSmsReceived() - sms is NULL"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    :sswitch_0
    return-void

    :cond_3
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSmsReceived() - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v22, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :cond_4
    new-instance v21, Lcom/android/mms/transaction/MTMessageParser;

    invoke-direct/range {v21 .. v21}, Lcom/android/mms/transaction/MTMessageParser;-><init>()V

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MTMessageParser;->messageParser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "Discard SMS by IT Policy"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsDiscardPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    aget-object v4, v6, v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsDiscardPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sms body by prefix"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v4

    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v4, v5, :cond_7

    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.intent.action.REFRESH_SIM_LIST"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    const/16 v23, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsSupportReplyAddress()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v23

    :goto_1
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v28

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "de.telekom.mds.mbp"

    invoke-static {v4, v5}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v28, :cond_9

    const-string v4, "Mobilbox Pro"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "3311"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sms due to DT mobilbox Pro is activated"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/reflector/AmbsReflector;->isSmsZcode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/mms/util/VipModeCTC;->isMessageBlocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v9, :cond_b

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "ServiceEnabler.blockSms is called"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnablerClass:Ljava/lang/Class;

    const-string v5, "blockSms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v31, 0x0

    const-class v32, Landroid/content/Context;

    aput-object v32, v7, v31

    const/16 v31, 0x1

    const-class v32, Ljava/lang/String;

    aput-object v32, v7, v31

    const/16 v31, 0x2

    const-class v32, Ljava/lang/String;

    aput-object v32, v7, v31

    invoke-static {v4, v5, v7}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnabler:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    aput-object v31, v5, v7

    const/4 v7, 0x1

    aput-object v23, v5, v7

    const/4 v7, 0x2

    aput-object v28, v5, v7

    invoke-static {v4, v11, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_b

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v9, 0x1

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v27, 0x0

    const-string v4, "3gpp2"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v27

    :cond_c
    :goto_3
    const v4, 0xc00a

    move/from16 v0, v27

    if-ne v0, v4, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSharingTidMessage(Landroid/telephony/SmsMessage;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSharingTidMessage handled~!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    array-length v0, v6

    move/from16 v17, v0

    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len of sms is (check concatenated sms) : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move/from16 v0, v17

    if-le v0, v4, :cond_12

    const/16 v29, 0x0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    aget-object v4, v6, v16

    if-eqz v4, :cond_f

    aget-object v4, v6, v16

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_e

    const-string v29, ""

    :cond_e
    if-nez v30, :cond_10

    move-object/from16 v30, v29

    :cond_f
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_10
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSpam : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_2

    :cond_13
    const-string v4, "3gpp"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v4, :cond_c

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v27, v0

    goto/16 :goto_3

    :cond_14
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSmsReceived...unsupported message format = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isWapBrowserAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_16

    packed-switch v27, :pswitch_data_0

    :cond_16
    const/16 v20, 0x0

    const-string v4, "android.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move/from16 v7, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;ZI)Landroid/net/Uri;

    move-result-object v20

    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLmsReassembleTimeoutsCTC()Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v15, :cond_18

    if-eqz v20, :cond_19

    :cond_18
    const-string v4, "lms_token_ctc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/telephony/LmsTokenCTC;

    if-eqz v19, :cond_19

    if-eqz v20, :cond_19

    const-string v4, "android.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/LmsObserverCTC;->onLmsReceived(Landroid/net/Uri;Landroid/telephony/LmsTokenCTC;I)V

    :cond_19
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSmsReceived..."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "GATE"

    const-string v5, "<GATE-M>INCOMING_MSG</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<GATE-M>SMSSENDERINFO:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "</GATE-M>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v25, Lcom/android/mms/transaction/StatisticsBuilder;

    move-object/from16 v0, v25

    invoke-direct {v0, v14}, Lcom/android/mms/transaction/StatisticsBuilder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/android/mms/transaction/StatisticsBuilder$Service;->SMS:Lcom/android/mms/transaction/StatisticsBuilder$Service;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setSVC(Lcom/android/mms/transaction/StatisticsBuilder$Service;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/transaction/StatisticsBuilder$Action;->START:Lcom/android/mms/transaction/StatisticsBuilder$Action;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setAC(Lcom/android/mms/transaction/StatisticsBuilder$Action;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MT:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setDIR(Lcom/android/mms/transaction/StatisticsBuilder$Direction;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setTimeStamp()Lcom/android/mms/transaction/StatisticsBuilder;

    if-eqz v6, :cond_1b

    array-length v4, v6

    if-lez v4, :cond_1b

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;

    :cond_1b
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/StatisticsBuilder;->sendBroadcast()V

    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StatisticsBuilder/sendBroadcast(): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/StatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz v20, :cond_1e

    if-nez v9, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEcid()Z

    move-result v4

    if-eqz v4, :cond_23

    if-eqz v26, :cond_23

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/EcidLookup;->shouldWaitForEcidName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5, v7}, Lcom/android/mms/util/EcidLookup;->delayedNotification(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;I)V

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    if-eqz v30, :cond_25

    array-length v4, v6

    const/4 v5, 0x1

    if-le v4, v5, :cond_25

    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "textConcat.length() = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateSmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendSMSToAirMsg(Landroid/content/Context;)V

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "sms"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1, v5}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    if-eqz v20, :cond_1f

    if-eqz v9, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v24

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateSmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateSMSHistoryAsBlock(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v25, Lcom/android/mms/transaction/StatisticsBuilder;

    move-object/from16 v0, v25

    invoke-direct {v0, v14}, Lcom/android/mms/transaction/StatisticsBuilder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/android/mms/transaction/StatisticsBuilder$Service;->SMS:Lcom/android/mms/transaction/StatisticsBuilder$Service;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setSVC(Lcom/android/mms/transaction/StatisticsBuilder$Service;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/transaction/StatisticsBuilder$Action;->END:Lcom/android/mms/transaction/StatisticsBuilder$Action;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setAC(Lcom/android/mms/transaction/StatisticsBuilder$Action;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MT:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setDIR(Lcom/android/mms/transaction/StatisticsBuilder$Direction;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setTimeStamp()Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setOK(Z)Lcom/android/mms/transaction/StatisticsBuilder;

    if-eqz v6, :cond_20

    array-length v4, v6

    if-lez v4, :cond_20

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v6, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setBytesIn(I)Lcom/android/mms/transaction/StatisticsBuilder;

    :cond_20
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/StatisticsBuilder;->sendBroadcast()V

    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StatisticsBuilder/sendBroadcast(): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/StatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discard Wap Url Noti Msg"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    const-string v4, "android.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/16 v18, 0x2

    goto/16 :goto_6

    :cond_22
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    goto/16 :goto_7

    :cond_24
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto/16 :goto_7

    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateSmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0x7d -> :sswitch_0
        0x7f -> :sswitch_0
        0x99 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc00e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSmsReceivedNonDefault(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handleSmsReceived()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "Do not anything for sms receive action when non-default sms"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 32

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const-string v4, "LastSentMsg"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string v4, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSmsSent. set sending false, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",lastSent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",errorClass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "errorClass"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "abort handle sms sent"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "SmsReadConfirmMsg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v5, v7, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSmsSent smsReadConfirm uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, KTSMSDeliv feature, sendFirstQueuedMessage()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto :goto_0

    :catch_0
    move-exception v20

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "fail to delete readconfirm message"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, KTSMSDeliv feature, not default sms app()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v30, 0x0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/mms/transaction/SmsReceiverService;->updateGroupType(Landroid/net/Uri;I)Z

    move-result v30

    :cond_4
    const/16 v28, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "simSlot"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    :cond_5
    const/4 v13, 0x0

    const/4 v15, 0x0

    if-nez v22, :cond_18

    const/16 v18, 0x0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "type"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    const/16 v24, 0x0

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    :cond_6
    const/4 v4, 0x5

    move/from16 v0, v24

    if-eq v0, v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_16

    :cond_7
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "concatenated message order is wrong..."

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_15

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "need to update messagebox to fail in case of being out of order."

    invoke-static {v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1d

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/mms/transaction/SmsReceiverService;->moveMessagetoSentBox(Landroid/net/Uri;I)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSmsSent: failed to move message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to sent folder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v13, v15, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateSmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    const-string v6, "T"

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/reflector/AmbsReflector;->onSentMessage(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v5, v4}, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateMsgStatus(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_b
    const/4 v14, -0x1

    const/16 v25, -0x1

    if-eqz v22, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result ok, sendFirstQueuedMessage()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "app_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "msg_id"

    aput-object v8, v6, v7

    const-string v7, "app_id>0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_d

    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v25

    :cond_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_d
    if-lez v14, :cond_e

    sget v4, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_APP_ID:I

    if-ne v14, v4, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_e

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v21

    const-string v4, "AT_COMMAND_CUSTOMER_TEST_RESPONSE"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Mms/ATCommandReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SENT Result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "errorClass"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_f

    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "error_code"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "date"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "GATE"

    const-string v6, "<GATE-M>SMS_SENT_SUCCESS</GATE-M>"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    const/16 v4, 0xcad

    if-eq v14, v4, :cond_12

    const/16 v4, 0xcae

    if-eq v14, v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/mms/transaction/SmsReceiverService$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v27, Lcom/android/mms/transaction/StatisticsBuilder;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/StatisticsBuilder;-><init>(Landroid/content/Context;)V

    const/16 v26, 0x0

    const/16 v23, 0x0

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "date ASC"

    move-object/from16 v6, p0

    move-object v8, v5

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_13

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_13
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    sget-object v4, Lcom/android/mms/transaction/StatisticsBuilder$Service;->SMS:Lcom/android/mms/transaction/StatisticsBuilder$Service;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setSVC(Lcom/android/mms/transaction/StatisticsBuilder$Service;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder$Action;->END:Lcom/android/mms/transaction/StatisticsBuilder$Action;

    invoke-virtual {v4, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setAC(Lcom/android/mms/transaction/StatisticsBuilder$Action;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MO:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-virtual {v4, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setDIR(Lcom/android/mms/transaction/StatisticsBuilder$Direction;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setTimeStamp()Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/mms/transaction/StatisticsBuilder;->setPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;

    if-eqz v23, :cond_14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setBytesOut(I)Lcom/android/mms/transaction/StatisticsBuilder;

    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2b

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setOK(Z)Lcom/android/mms/transaction/StatisticsBuilder;

    :goto_7
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/transaction/StatisticsBuilder;->sendBroadcast()V

    const-string v4, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StatisticsBuilder/sendBroadcast(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/transaction/StatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    :try_start_4
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "no need to update."

    invoke-static {v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_16
    :try_start_5
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "lastSentMsg is false set mSending as true.."

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    if-eqz v18, :cond_17

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v4

    :cond_18
    const/16 v18, 0x0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "address"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "body"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_19

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v15

    :cond_19
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    if-eqz v18, :cond_1a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v4

    :cond_1b
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result ok, not default sms app"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_2
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_1c
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_21

    :cond_1e
    const-string v4, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "GATE"

    const-string v6, "<GATE-M>SMS_MSG_ERROR</GATE-M>"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    const/4 v4, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v5, v4, v1}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/mms/reflector/AmbsReflector;->onSendMessageFail(Ljava/lang/String;)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/mms/transaction/SmsReceiverService$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v30

    invoke-direct {v0, v5, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/mms/reflector/AmbsReflector;->onSendMessageFail(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/mms/transaction/SmsReceiverService$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v22, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result err fdn, sendFirstQueuedMessage()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_6

    :cond_23
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result err fdn, not default sms app"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSAC()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_26

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handleSmsSent : DSAC Failure "

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v5, v4, v1}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result err dsc, sendFirstQueuedMessage()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/mms/transaction/SmsReceiverService$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/SmsReceiverService$5;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_25
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result err dsc, not default sms app"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v30

    move/from16 v3, v28

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    :goto_9
    if-eqz v22, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result else, sendFirstQueuedMessage()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_6

    :cond_27
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v30

    invoke-direct {v0, v5, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    goto :goto_9

    :cond_28
    const-string v4, "Mms/SmsReceiverService"

    const-string v6, "handle sms sent, result else, not default sms app"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_3
    move-exception v4

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder$Service;->SMS:Lcom/android/mms/transaction/StatisticsBuilder$Service;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setSVC(Lcom/android/mms/transaction/StatisticsBuilder$Service;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/transaction/StatisticsBuilder$Action;->END:Lcom/android/mms/transaction/StatisticsBuilder$Action;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/StatisticsBuilder;->setAC(Lcom/android/mms/transaction/StatisticsBuilder$Action;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MO:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/StatisticsBuilder;->setDIR(Lcom/android/mms/transaction/StatisticsBuilder$Direction;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setTimeStamp()Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/android/mms/transaction/StatisticsBuilder;->setPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;

    if-eqz v23, :cond_29

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setBytesOut(I)Lcom/android/mms/transaction/StatisticsBuilder;

    :cond_29
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2a

    const/4 v6, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setOK(Z)Lcom/android/mms/transaction/StatisticsBuilder;

    :goto_a
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/transaction/StatisticsBuilder;->sendBroadcast()V

    const-string v6, "Mms/SmsReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StatisticsBuilder/sendBroadcast(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/transaction/StatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_2a
    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setOK(Z)Lcom/android/mms/transaction/StatisticsBuilder;

    goto :goto_a

    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/StatisticsBuilder;->setOK(Z)Lcom/android/mms/transaction/StatisticsBuilder;

    goto/16 :goto_7
.end method

.method private handleSmsServiceCenter(Landroid/content/Intent;)V
    .locals 14

    const/4 v13, 0x0

    const-string v10, "smsc"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "simSlot"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    :cond_0
    if-nez v0, :cond_1

    const-string v10, "Mms/SmsReceiverService"

    const-string v11, "[SMS]handleSmsServiceCenter : Smsc == null"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS]handleSmsServiceCenter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS] Temporary log for P140712-03827 mInsertedSimNum : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS] Temporary log for P140712-03827 MultiSimManager.getInsertedSimNum() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS] Temporary log for P140712-03827 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v10

    sput v10, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    aget-object v10, v0, v13

    const-string v11, "NotSet"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00f9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v10, "pref_key_manage_smsc_address"

    invoke-interface {v2, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v10

    if-eqz v10, :cond_4

    sget v10, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_5
    const-string v5, "pref_key_manage_smsc_address"

    const-string v4, "pref_key_manage_smsc_address"

    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSmsServiceCenter - simSlot = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_sim"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v1, 0x2

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_9

    const-string v4, "pref_key_manage_smsc_address"

    if-eqz v8, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_sim"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    const-string v10, ""

    invoke-interface {v6, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS]RIL_REQUEST_GET_SMSC_ADDRESS   handleSmsServiceCenter (before)  get from Preference ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    sget v1, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    goto :goto_2

    :cond_9
    aget-object v10, v0, v13

    invoke-interface {v2, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS]RIL_REQUEST_GET_SMSC_ADDRESS   handleSmsServiceCenter   write into Preference "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v1, :cond_2

    const-string v4, "pref_key_manage_smsc_address"

    if-eqz v8, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_sim"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_a
    const-string v10, ""

    invoke-interface {v6, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS]RIL_REQUEST_GET_SMSC_ADDRESS   handleSmsServiceCenter (after)  get from Preference ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS]handleSmsServiceCenter one SIM : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_c

    const-string v10, "pref_key_manage_smsc_address_sim2"

    aget-object v11, v0, v13

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_c
    const-string v10, "pref_key_manage_smsc_address"

    aget-object v11, v0, v13

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method private handleValidityPeriod(Landroid/content/Intent;)V
    .locals 6

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CANADA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "mValidityPeriod"

    const/16 v4, 0xff

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "[SMS]handleValidityPeriod : validityPeriod == null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SMS]handleValidityPeriod"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_key_validity_period"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;ZI)Landroid/net/Uri;
    .locals 7

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "insertMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v6, p2, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLmsReassembleTimeoutsCTC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/mms/transaction/SmsReceiverService;->findFirstValidMessage([Landroid/telephony/SmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v6

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p4, p6}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Ljava/lang/String;I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static isDuplicateSMS(Landroid/content/Context;Landroid/telephony/SmsMessage;)Z
    .locals 15

    const-string v8, ""

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v4, ""

    const/4 v5, 0x0

    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsSupportReplyAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    :goto_0
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v4, "(( date_sent = 0  AND date > ? ) OR ( date_sent = ?  )) AND body = ? "

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v9, v5, v0

    :goto_1
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "cursor is not 0  "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return v0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_3
    const-string v4, "(( date_sent = 0  AND date > ? ) OR ( date_sent = ?  )) AND body = ? AND address = ?"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v9, v5, v0

    const/4 v0, 0x3

    aput-object v8, v5, v0

    goto :goto_1

    :cond_4
    :try_start_1
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "cursor is  0  "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v10, :cond_5

    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :try_start_2
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "cursor is  null  "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v12

    :try_start_3
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "cursor is  null: NullPointerException"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_5

    goto :goto_4

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private isRoamGuardPending()Z
    .locals 10

    const/4 v8, 0x0

    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v7, 0x0

    const-string v9, "roam_pending=1"

    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String;

    const-string v4, "roam_pending=1"

    const/4 v5, 0x0

    const-string v6, "date ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v0, "Mms/SmsReceiverService"

    const-string v3, "sendFirstQueuedMessage() roam_pending = 1"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return v8

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isSimCardChanged()Z
    .locals 2

    const-string v0, "1"

    const-string v1, "ril.isIccChanged"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static mergeAndTidyDisplayMessageBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 8

    array-length v6, p0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->tidyMessageBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLmsReassembleTimeoutsCTC()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "(...)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private messageFailedToSend(Landroid/net/Uri;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    return-void
.end method

.method private messageFailedToSend(Landroid/net/Uri;IZI)V
    .locals 18

    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageFailedToSend msg failed uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSimSlot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "type"

    aput-object v6, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    :cond_0
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageBoxType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "app_id"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "msg_id"

    aput-object v6, v5, v4

    const-string v6, "app_id>0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const-wide/16 v15, -0x1

    if-eqz v13, :cond_3

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v15

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    sput-wide v15, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    const/4 v10, -0x1

    const/16 v17, -0x1

    if-eqz v12, :cond_5

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v17

    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    if-lez v10, :cond_a

    sget v3, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_APP_ID:I

    if-ne v10, v3, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    const-string v3, "AT_COMMAND_CUSTOMER_TEST_RESPONSE"

    const-string v4, "ERROR"

    invoke-static {v3, v4}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/ATCommandReceiver"

    const-string v4, "SENT Result : ERROR"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateMsgStatus(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    :catchall_1
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    :catchall_2
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_9
    new-instance v11, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x5

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v11, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v17

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x5

    if-ne v9, v3, :cond_b

    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "not need notification sound."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, p4

    invoke-static {v3, v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private messageFailedtoDisplay(ILjava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$6;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/transaction/SmsReceiverService$6;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private moveMessagetoSentBox(Landroid/net/Uri;I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveMessagetoSentBox(uri, error) uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    const/4 v0, 0x5

    if-ne v7, v0, :cond_2

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "do not need update message box."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "move failed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v9

    goto :goto_0
.end method

.method private moveOutboxMessagesToFailedBox()I
    .locals 7

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "error_code"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveOutboxMessagesToFailedBox messageCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method private registerForServiceStateChanges()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiver;->registerForServiceStateChanges(Landroid/content/Context;)V

    return-void
.end method

.method public static replaceCarriageReturn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;
    .locals 23

    const-string v3, "Mms/SmsReceiverService"

    const-string v6, "replaceMessage()"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v21, p2, v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLmsReassembleTimeoutsCTC()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->findFirstValidMessage([Landroid/telephony/SmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v21

    :cond_0
    if-nez v21, :cond_2

    const-string v3, "Mms/SmsReceiverService"

    const-string v6, "replaceMessage() sms is NULL!"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_1
    :goto_0
    return-object v11

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->mergeAndTidyDisplayMessageBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/TelephonyUtils;->getMessageFromSos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :cond_3
    const-string v3, "body"

    move-object/from16 v0, v18

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "callback_number"

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v3, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v20

    const-string v7, "address = ? AND protocol = ?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v19, v8, v3

    const/4 v3, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    sget-object v5, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v22, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p4, :cond_5

    sget-object v5, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    sget-object v22, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    :cond_5
    sget-object v6, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_8

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v10, v4

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    :cond_7
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private retrySendSMSMessage(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 14

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/mms/transaction/SmsReceiverService;->EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    invoke-virtual {v13, v11, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/4 v1, 0x1

    if-le v9, v1, :cond_2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v12, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/RetryActivity;

    invoke-direct {v12, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x18000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "error"

    move/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    if-nez v10, :cond_1

    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "sendPCWLockMessage : conManager is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v1, "pref_key_validity_period"

    const/16 v4, 0xff

    invoke-interface {v11, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x2

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "sendPCWLockMessage : send SMS complete."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private serviceStateAvailable(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    sget v1, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->getIccCardAvailability(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v2, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMS]serviceStateAvailable() simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isServiceAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    sget v1, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/net/Uri;
    .locals 12

    const/4 v11, 0x0

    const/4 v8, 0x0

    const-string v9, "Mms/SmsReceiverService"

    const-string v10, "storeCbMessage()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "message"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SmsCbMessage;

    if-nez v4, :cond_1

    const-string v9, "Mms/SmsReceiverService"

    const-string v10, "received SMS_CB_RECEIVED_ACTION with no message extra"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    new-instance v1, Landroid/telephony/CellBroadcastMessage;

    invoke-direct {v1, v4}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/telephony/SmsCbMessage;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSavingInbox4CBChannel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "cbMsgBody"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "simSlot"

    invoke-virtual {v0, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v8, "body"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "address"

    const-string v9, "CBmessages"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "protocol"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "simSlot"

    invoke-virtual {p2, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "Mms/SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeCbMessage() - slotid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "sim_slot"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "sim_imsi"

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v5, v8, v7}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;
    .locals 24

    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "storeMessage()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    aget-object v16, p2, v20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLmsReassembleTimeoutsCTC()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->findFirstValidMessage([Landroid/telephony/SmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v16

    :cond_0
    if-nez v16, :cond_2

    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "storeMessage() sms is NULL!"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    const/4 v12, 0x0

    const-string v10, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v19

    const-string v20, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "store message callback = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "callback_number"

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p2

    array-length v13, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v20

    if-nez v20, :cond_12

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v20

    if-eqz v20, :cond_4

    if-eqz v6, :cond_4

    iget-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    const/4 v11, -0x1

    iget-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v11, v0, 0xff

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_4

    const-string v20, "svc_cmd"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "svc_cmd_content"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_6

    iget-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    iget-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v20, 0x1580

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x1581

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x1582

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x1583

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x1585

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x1586

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x1589

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x158a

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x15e1

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x15e3

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x2134

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x2135

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x2136

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x2340

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x23f4

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x23f5

    move/from16 v0, v20

    if-ne v14, v0, :cond_11

    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<<"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0c011c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    :cond_6
    :goto_1
    if-nez v12, :cond_7

    invoke-static/range {p2 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->mergeAndTidyDisplayMessageBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<<"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0c011c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/TelephonyUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->getMessageFromSos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_8
    const-string v20, "body"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "thread_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    const-string v20, "address"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEcid()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {v4}, Lcom/android/mms/util/EcidLookup;->addSender(Ljava/lang/String;)V

    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    invoke-virtual {v5, v4}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->reload()V

    :cond_a
    :goto_2
    if-eqz v18, :cond_b

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_c

    :cond_b
    if-eqz v4, :cond_c

    if-nez p4, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    :goto_3
    const-string v20, "thread_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v20

    if-eqz v20, :cond_d

    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v20

    if-eqz v20, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    const-string v20, "safe_message"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/4 v8, 0x0

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p4, :cond_e

    sget-object v7, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    :cond_e
    const-string v20, "ril.sms.gcf-mode"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v20, "On"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode On"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1a

    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MmsConfig.SMS_DB_COUNT : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v15, v7, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    new-instance v9, Landroid/content/Intent;

    const-string v20, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_f
    :goto_4
    if-nez p4, :cond_10

    if-eqz v18, :cond_10

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v23}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v20

    const-string v21, "I"

    const-string v22, "T"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/mms/reflector/AmbsReflector;->onInsertNewMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v17, 0x0

    const-string v20, "3gpp2"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v17

    :cond_13
    :goto_5
    const-string v20, "teleservice_id"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const v20, 0xc00a

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    const-string v20, "link_url"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const-string v20, "3gpp"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v20

    if-eqz v20, :cond_13

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v17, v0

    goto :goto_5

    :cond_15
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleSmsReceived...unsupported message format = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    const-string v20, "link_url"

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getlinkUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v20

    if-eqz v20, :cond_18

    const-string v20, "address"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_18
    new-instance v4, Ljava/lang/String;

    const-string v20, "Unknown"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v20, "address"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    goto/16 :goto_3

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_1b
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode Off"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v15, v7, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_4
.end method

.method private static tidyMessageBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object v0, p0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplacingCarriageReturnIntoNewLine()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    goto :goto_0
.end method

.method private static translateResultCode(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown error code"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "Activity.RESULT_OK"

    goto :goto_0

    :pswitch_2
    const-string v0, "SmsManager.RESULT_ERROR_GENERIC_FAILURE"

    goto :goto_0

    :pswitch_3
    const-string v0, "SmsManager.RESULT_ERROR_RADIO_OFF"

    goto :goto_0

    :pswitch_4
    const-string v0, "SmsManager.RESULT_ERROR_NULL_PDU"

    goto :goto_0

    :pswitch_5
    const-string v0, "SmsManager.RESULT_ERROR_NO_SERVICE"

    goto :goto_0

    :pswitch_6
    const-string v0, "SmsManager.RESULT_ERROR_LIMIT_EXCEEDED"

    goto :goto_0

    :pswitch_7
    const-string v0, "SmsManager.RESULT_ERROR_FDN_CHECK_FAILURE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiver;->unregisterForServiceStateChanges(Landroid/content/Context;)V

    return-void
.end method

.method private updateGroupType(Landroid/net/Uri;I)Z
    .locals 19

    const/16 v8, 0x19

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id=(SELECT group_id FROM sms WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND _id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :cond_5
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v9, v2, :cond_7

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    :cond_6
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v9, v2, :cond_9

    const/4 v2, 0x0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :pswitch_1
    const/4 v14, 0x1

    :pswitch_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v9, 0x1

    :try_start_2
    rem-int/lit8 v2, v2, 0x19

    const/16 v3, 0x18

    if-ne v2, v3, :cond_6

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    :cond_9
    const/16 v16, 0x5

    if-nez v14, :cond_a

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    const/16 v16, 0x2

    :cond_a
    :try_start_3
    new-instance v18, Landroid/content/ContentValues;

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v2, "date"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "group_type"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "updateGroupType done"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "Mms/SmsReceiverService"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v5, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v5}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "ServiceEnabler.startService is called"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.tencent.engine.ServiceEnabler"

    invoke-static {v4}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnablerClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnablerClass:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/util/MethodReflector;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnabler:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnablerClass:Ljava/lang/Class;

    const-string v5, "startService"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnabler:Ljava/lang/Object;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v2, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnablerClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "ServiceEnabler.stopService is called"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnablerClass:Ljava/lang/Class;

    const-string v2, "stopService"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceEnabler:Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    const-string v3, "result"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    :cond_1
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mResultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->translateResultCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput p3, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const/4 v2, 0x2

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendFirstQueuedMessage(I)V
    .locals 38

    monitor-enter p0

    :try_start_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage()"

    move/from16 v0, p1

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v33, 0x1

    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v37, "roam_pending=0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v24, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_FOR_SVC_CMD:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v24

    :cond_0
    :goto_0
    if-eqz v24, :cond_6

    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    const/4 v6, 0x1

    if-gt v2, v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v36, 0x0

    const/16 v32, 0x0

    const/16 v31, 0x0

    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v29, 0x0

    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_5

    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage() DB SIM id: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v9, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage() index: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->serviceStateAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_d

    if-ltz p1, :cond_3

    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_d

    :cond_3
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v31

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v36

    int-to-long v9, v0

    const/16 v2, 0x20

    move/from16 v0, v32

    if-ne v0, v2, :cond_a

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/mms/transaction/SmsMessageSender;->setSimSlot(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    const-wide/16 v9, -0x1

    :try_start_3
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :goto_4
    if-eqz v24, :cond_6

    :try_start_4
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v33, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_19

    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->mInsertedSimNum:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_19

    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    if-nez v2, :cond_7

    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    if-nez v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_5
    monitor-exit p0

    return-void

    :cond_8
    :try_start_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String;

    const-string v6, "roam_pending=0"

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_0

    :cond_9
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v24

    goto/16 :goto_0

    :catch_0
    move-exception v26

    :try_start_6
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "CursorWindowAllocationException caught"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v33, 0x0

    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_a
    const/4 v11, 0x0

    goto :goto_2

    :cond_b
    :try_start_7
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    move/from16 v0, v32

    if-ne v0, v2, :cond_c

    const/16 v20, 0x1

    :goto_6
    const/16 v23, 0x81

    move-object v14, v5

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v23}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_c
    const/16 v20, 0x0

    goto :goto_6

    :catch_1
    move-exception v26

    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", caught "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    const/4 v2, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v6, v9}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    const/16 v33, 0x0

    goto/16 :goto_4

    :cond_d
    const/16 v33, 0x0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage() moveToNext false"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    if-eqz v24, :cond_e

    :try_start_8
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_f
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    :cond_10
    :try_start_9
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isLGUUsim()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "+82"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v31

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const/16 v30, 0x0

    const/16 v25, 0x0

    const-wide/16 v9, 0x0

    cmp-long v2, v27, v9

    if-nez v2, :cond_15

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    packed-switch v2, :pswitch_data_0

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v36

    int-to-long v9, v0

    const/16 v2, 0x20

    move/from16 v0, v32

    if-ne v0, v2, :cond_16

    const/4 v11, 0x1

    :goto_9
    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V

    :cond_14
    :goto_a
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage..."

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-wide/16 v9, -0x1

    :try_start_a
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage set mSending to true"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z
    :try_end_a
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_4

    :catch_2
    move-exception v26

    :try_start_b
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", caught "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->sSending:Z

    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage set mSending to false"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v6, 0x1

    iget v9, v5, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v6, v9}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    const/16 v33, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v9, 0x0

    const-class v10, Lcom/android/mms/transaction/SmsReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v6, v9, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_12

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    goto/16 :goto_7

    :pswitch_0
    const/16 v25, 0x1

    move/from16 v30, v25

    goto/16 :goto_8

    :pswitch_1
    const/16 v30, 0x1

    const/16 v25, 0x2

    goto/16 :goto_8

    :pswitch_2
    const/16 v25, 0x2

    move/from16 v30, v25

    goto/16 :goto_8

    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_17
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    move/from16 v0, v32

    if-ne v0, v2, :cond_18

    const/16 v20, 0x1

    :goto_b
    const/16 v23, 0x81

    move-object v14, v5

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v23}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_a

    :cond_18
    const/16 v20, 0x0

    goto :goto_b

    :cond_19
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
