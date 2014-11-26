.class public Lcom/android/mms/util/ATCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ATCommandReceiver.java"


# static fields
.field private static final AT_COMMAND_CUSTOMER_TEST_REQUEST:Ljava/lang/String; = "android.intent.action.CUSTOMER_TEST_REQUEST"

.field private static final AT_COMMAND_CUSTOMER_TEST_RESPONSE:Ljava/lang/String; = "android.intent.action.CUSTOMER_TEST_RESPONSE"

.field private static final BYPASS_AP_TO_CP:Ljava/lang/String; = "bypass_ap_cp"

.field private static final BYPASS_CP_TO_AP:Ljava/lang/String; = "bypass_cp_ap"

.field private static CONFIRM_SEND_TO_MORE:Ljava/lang/String; = null

.field public static MESSAGE_ATCOMMAND_APP_ID:I = 0x0

.field private static MESSAGE_ATCOMMAND_MSG_ID:I = 0x0

.field private static MODE_LIST_MESSAGE:I = 0x0

.field private static MODE_READ_MESSAGE:I = 0x0

.field private static READ_MESSAGE:I = 0x0

.field public static final REQUEST_AT_COMMAND_DELETE_MESSAGE:Ljava/lang/String; = "AT+CMGD"

.field public static final REQUEST_AT_COMMAND_LIST_MESSAGE:Ljava/lang/String; = "AT+CMGL"

.field public static final REQUEST_AT_COMMAND_MESSAGE_FORMAT:Ljava/lang/String; = "AT+CMGF"

.field public static final REQUEST_AT_COMMAND_READ_MESSAGE:Ljava/lang/String; = "AT+CMGR"

.field public static final REQUEST_AT_COMMAND_SEND_MESSAGE:Ljava/lang/String; = "AT+CMGS"

.field public static final REQUEST_AT_COMMAND_SEND_MESSAGE_FROM_STORAGE:Ljava/lang/String; = "AT+CMSS"

.field public static final REQUEST_AT_COMMAND_WRITE_MESSAGE:Ljava/lang/String; = "AT+CMGW"

.field private static final SMS_DRAFT_WHERE:Ljava/lang/String; = "type=3"

.field private static final TAG:Ljava/lang/String; = "Mms/ATCommandReceiver"

.field private static UNREAD_MESSAGE:I

.field private static mContext:Landroid/content/Context;

.field private static sDefaultTestMode:Ljava/lang/String;

.field private static sTempSendmessage:Ljava/lang/String;

.field private static sTempWritemessage:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7ffffffe

    sput v0, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_APP_ID:I

    sput v1, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_MSG_ID:I

    sput v2, Lcom/android/mms/util/ATCommandReceiver;->MODE_LIST_MESSAGE:I

    sput v1, Lcom/android/mms/util/ATCommandReceiver;->MODE_READ_MESSAGE:I

    sput v2, Lcom/android/mms/util/ATCommandReceiver;->UNREAD_MESSAGE:I

    sput v1, Lcom/android/mms/util/ATCommandReceiver;->READ_MESSAGE:I

    const-string v0, "1"

    sput-object v0, Lcom/android/mms/util/ATCommandReceiver;->CONFIRM_SEND_TO_MORE:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/android/mms/util/ATCommandReceiver;->sDefaultTestMode:Ljava/lang/String;

    sput-object v3, Lcom/android/mms/util/ATCommandReceiver;->sTempSendmessage:Ljava/lang/String;

    sput-object v3, Lcom/android/mms/util/ATCommandReceiver;->sTempWritemessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkMessageFormat(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/android/mms/util/ATCommandReceiver;->sDefaultTestMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AT+CMGF"

    const-string v1, "OK"

    invoke-static {v0, v1}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "Mms/ATCommandReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Messages Format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AT+CMGF"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkSendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    sget-object v0, Lcom/android/mms/util/ATCommandReceiver;->CONFIRM_SEND_TO_MORE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ATCommandReceiver;->sTempSendmessage:Ljava/lang/String;

    :goto_0
    const-string v0, "Mms/ATCommandReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " tempSendmessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/ATCommandReceiver;->sTempSendmessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v0, "AT+CMGS"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/ATCommandReceiver"

    const-string v1, " tempSendmessage : null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/util/ATCommandReceiver;->sTempSendmessage:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    sget-object p3, Lcom/android/mms/util/ATCommandReceiver;->sTempSendmessage:Ljava/lang/String;

    move-object p4, p2

    const-string v0, "Mms/ATCommandReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smsbody : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    :cond_3
    const-string v0, "AT+CMGS"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/ATCommandReceiver"

    const-string v1, "Send messages : ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/android/mms/util/ATCommandReceiver;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/ATCommandReceiver;->sTempSendmessage:Ljava/lang/String;

    goto :goto_1
.end method

.method private checkWriteMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->CONFIRM_SEND_TO_MORE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/ATCommandReceiver;->sTempWritemessage:Ljava/lang/String;

    :goto_0
    const-string v1, "Mms/ATCommandReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tempWritemessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/ATCommandReceiver;->sTempWritemessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v1, "REQUEST_AT_COMMAND_WRITE_MESSAGE"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, " tempSendmessage : null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->sTempWritemessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    sget-object p3, Lcom/android/mms/util/ATCommandReceiver;->sTempWritemessage:Ljava/lang/String;

    move-object p4, p2

    const-string v1, "Mms/ATCommandReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smsbody : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/mms/util/ATCommandReceiver;->saveDraftMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "REQUEST_AT_COMMAND_WRITE_MESSAGE"

    invoke-static {v1, v0}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/util/ATCommandReceiver;->sTempWritemessage:Ljava/lang/String;

    const-string v1, "Mms/ATCommandReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write messages : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "REQUEST_AT_COMMAND_WRITE_MESSAGE"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "Write messages : ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .param p1    # J

    const-string v0, "Mms/ATCommandReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDraftSmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/ATCommandReceiver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteSmsMessage(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/ATCommandReceiver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v2, "AT+CMGD"

    invoke-static {v2, p1}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Mms/ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "AT+CMGD"

    const-string v3, "ERROR"

    invoke-static {v2, v3}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Mms/ATCommandReceiver"

    const-string v3, "Delete message : ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private listMessages(Ljava/lang/String;I)V
    .locals 21
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "listMessages()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    const-wide/16 v15, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    sget v1, Lcom/android/mms/util/ATCommandReceiver;->MODE_LIST_MESSAGE:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_7

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AT+CMGL"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "List message : ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v4, "_id>0"

    :cond_2
    :goto_1
    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "app_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "date"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "address"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "body"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "read"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "_id ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_a

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "cursor is null so just return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/mms/util/ATCommandReceiver;->MODE_LIST_MESSAGE:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    const-string v1, "AT+CMGL"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "List message : ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "STO UNSENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = 3 and read = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/util/ATCommandReceiver;->READ_MESSAGE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v1, "STO SENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = 2 and read = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/util/ATCommandReceiver;->READ_MESSAGE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_5
    const-string v1, "REC READ"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = 1 and read = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/util/ATCommandReceiver;->READ_MESSAGE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    const-string v1, "REC UNREAD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = 1 and read = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/util/ATCommandReceiver;->UNREAD_MESSAGE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "AT+CMGR"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "Read message : ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_9
    const-string v1, "AT+CMGR"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "Read message : ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_d

    sget v1, Lcom/android/mms/util/ATCommandReceiver;->MODE_LIST_MESSAGE:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_b

    const-string v1, "AT+CMGL"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "List message : ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    :try_start_1
    const-string v1, "AT+CMGR"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ATCommandReceiver"

    const-string v2, "Read message : ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_c
    throw v1

    :cond_d
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_e

    const-string v18, "STO SENT"

    :cond_e
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ne v0, v1, :cond_f

    sget v1, Lcom/android/mms/util/ATCommandReceiver;->UNREAD_MESSAGE:I

    move/from16 v0, v17

    if-ne v0, v1, :cond_f

    const-string v18, "REC UNREAD"

    :cond_f
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ne v0, v1, :cond_10

    sget v1, Lcom/android/mms/util/ATCommandReceiver;->READ_MESSAGE:I

    move/from16 v0, v17

    if-ne v0, v1, :cond_10

    const-string v18, "REC READ"

    :cond_10
    const/4 v1, 0x3

    move/from16 v0, v19

    if-ne v0, v1, :cond_11

    const-string v18, "STO UNSENT"

    :cond_11
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd, HH:mm:ss+SSS"

    invoke-direct {v11, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v1, Lcom/android/mms/util/ATCommandReceiver;->MODE_LIST_MESSAGE:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_13

    const-string v1, "AT+CMGL"

    invoke-static {v1, v12}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v1, "Mms/ATCommandReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_d

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_13
    :try_start_3
    const-string v1, "AT+CMGR"

    invoke-static {v1, v12}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method private saveDraftMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, v6, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    sget-object v6, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v1, v7}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "address"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "thread_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "body"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "type"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "app_id"

    sget v7, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_APP_ID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "msg_id"

    sget v7, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_MSG_ID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/util/ATCommandReceiver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7, v8, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Mms/ATCommandReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draftMsgID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendDraftMessage(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v2, v5

    const-string v3, "body"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "Mms/ATCommandReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DraftAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DraftSmsbody : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v8}, Lcom/android/mms/util/ATCommandReceiver;->sendWriteMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "AT+CMSS"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/android/mms/util/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/ATCommandReceiver"

    const-string v1, "Send Draft message : ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v9

    new-array v2, v3, [Ljava/lang/String;

    aput-object p1, v2, v1

    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v3}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v4

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_APP_ID:I

    sget v7, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_MSG_ID:I

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V

    const-string v1, "Mms/ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Message Body : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string v1, "Mms/ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mode"

    const-string v2, "bypass_ap_cp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendWriteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v9

    new-array v2, v3, [Ljava/lang/String;

    aput-object p1, v2, v1

    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v3}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v4

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    sget-object v1, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_APP_ID:I

    sget v7, Lcom/android/mms/util/ATCommandReceiver;->MESSAGE_ATCOMMAND_MSG_ID:I

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V

    const-string v1, "Mms/ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WriteAddress : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", WriteSmsbody : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-direct {p0, v4, v5}, Lcom/android/mms/util/ATCommandReceiver;->deleteDraftSmsMessage(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string v1, "Mms/ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    sput-object p1, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/mms/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iput-object v12, p0, Lcom/android/mms/util/ATCommandReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_1

    const-string v12, "Mms/ATCommandReceiver"

    const-string v13, "onReceive() Error"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "android.intent.action.CUSTOMER_TEST_REQUEST"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "mode"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v12, "bypass_cp_ap"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "flag"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "command"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v12, "="

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v12, v5

    if-lez v12, :cond_3

    const/4 v12, 0x0

    aget-object v10, v5, v12

    array-length v12, v5

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    const/4 v12, 0x1

    aget-object v11, v5, v12

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    if-eqz v11, :cond_2

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-static {v12}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x1

    aget-object v9, v6, v12

    :cond_2
    const-string v12, "Mms/ATCommandReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "command :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", parameter : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", smsbody : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", tempSendmessage : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/mms/util/ATCommandReceiver;->sTempSendmessage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", tempWritemessage : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/mms/util/ATCommandReceiver;->sTempWritemessage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    if-eqz v11, :cond_0

    const-string v12, "AT+CMGS"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct {p0, v2, v11, v1, v9}, Lcom/android/mms/util/ATCommandReceiver;->checkSendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v12, "Mms/ATCommandReceiver"

    const-string v13, "retrieved data size 0 : ERROR"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v12, "AT+CMSS"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct {p0, v11}, Lcom/android/mms/util/ATCommandReceiver;->sendDraftMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v12, "AT+CMGW"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-direct {p0, v2, v11, v1, v9}, Lcom/android/mms/util/ATCommandReceiver;->checkWriteMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v12, "AT+CMGF"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-direct {p0, v11}, Lcom/android/mms/util/ATCommandReceiver;->checkMessageFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v12, "AT+CMGL"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    sget v12, Lcom/android/mms/util/ATCommandReceiver;->MODE_LIST_MESSAGE:I

    invoke-direct {p0, v11, v12}, Lcom/android/mms/util/ATCommandReceiver;->listMessages(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    const-string v12, "AT+CMGR"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget v12, Lcom/android/mms/util/ATCommandReceiver;->MODE_READ_MESSAGE:I

    invoke-direct {p0, v11, v12}, Lcom/android/mms/util/ATCommandReceiver;->listMessages(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    const-string v12, "AT+CMGD"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct {p0, v11}, Lcom/android/mms/util/ATCommandReceiver;->deleteSmsMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
