.class Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isDataAvailable(I)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v4, "Mms:transaction"

    const-string v6, "mConnMgr is null return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v6

    if-nez v6, :cond_7

    if-ne p1, v4, :cond_7

    const/16 v6, 0x1a

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService] wifi network available!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    move v1, v4

    :goto_2
    if-nez v1, :cond_6

    :cond_6
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDataAvailable() networkIsAvaliable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v5, "Mms:transaction"

    const-string v6, "isDataAvailable() return true"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_1

    :cond_8
    move v1, v5

    goto :goto_2
.end method

.method private updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 50

    const/4 v5, 0x0

    aget-object v31, p1, v5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "simSlot"

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :cond_0
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PushReceiver]intent : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "data"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v41

    new-instance v39, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Invalid PUSH data"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/mms/util/AddressUtils;->checkUnknownAddress(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v49

    const-wide/16 v12, -0x1

    const-wide/16 v36, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v45, 0x0

    const/16 v40, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v40

    :cond_2
    new-instance v45, Lcom/android/mms/transaction/StatisticsBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-direct {v0, v5}, Lcom/android/mms/transaction/StatisticsBuilder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/mms/transaction/StatisticsBuilder$Service;->MMS:Lcom/android/mms/transaction/StatisticsBuilder$Service;

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setSVC(Lcom/android/mms/transaction/StatisticsBuilder$Service;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder$Action;->START:Lcom/android/mms/transaction/StatisticsBuilder$Action;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setAC(Lcom/android/mms/transaction/StatisticsBuilder$Action;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MT:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setDIR(Lcom/android/mms/transaction/StatisticsBuilder$Direction;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setTimeStamp()Lcom/android/mms/transaction/StatisticsBuilder;

    if-eqz v40, :cond_3

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/StatisticsBuilder;->setPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;

    :cond_3
    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/transaction/StatisticsBuilder;->sendBroadcast()V

    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StatisticsBuilder/sendBroadcast(): "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/transaction/StatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v45, Lcom/android/mms/transaction/StatisticsBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-direct {v0, v5}, Lcom/android/mms/transaction/StatisticsBuilder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/mms/transaction/StatisticsBuilder$Service;->MMS:Lcom/android/mms/transaction/StatisticsBuilder$Service;

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setSVC(Lcom/android/mms/transaction/StatisticsBuilder$Service;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder$Action;->END:Lcom/android/mms/transaction/StatisticsBuilder$Action;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setAC(Lcom/android/mms/transaction/StatisticsBuilder$Action;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MT:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/StatisticsBuilder;->setDIR(Lcom/android/mms/transaction/StatisticsBuilder$Direction;)Lcom/android/mms/transaction/StatisticsBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setTimeStamp()Lcom/android/mms/transaction/StatisticsBuilder;

    if-eqz v40, :cond_4

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/StatisticsBuilder;->setPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;

    :cond_4
    if-eqz v41, :cond_5

    move-object/from16 v0, v41

    array-length v5, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/StatisticsBuilder;->setBytesIn(I)Lcom/android/mms/transaction/StatisticsBuilder;

    :cond_5
    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/transaction/StatisticsBuilder;->sendBroadcast()V

    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StatisticsBuilder/sendBroadcast(): "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/transaction/StatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PushReceiver] Received message type of pdu="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v49, :sswitch_data_0

    :try_start_0
    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Received unrecognized PDU."

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_1
    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] PUSH Intent processed."

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v5, 0x0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move/from16 v0, v49

    # invokes: Lcom/android/mms/transaction/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    invoke-static {v5, v3, v0}, Lcom/android/mms/transaction/PushReceiver;->access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v12

    const-wide/16 v5, -0x1

    cmp-long v5, v12, v5

    if-nez v5, :cond_8

    const-string v5, "Mms:transaction"

    const-string v6, "threadId is -1"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v30

    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PushReceiver] Failed to save the data from PUSH: type="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    :try_start_2
    const-string v14, ""

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;Z)Landroid/net/Uri;

    move-result-object v7

    :goto_2
    new-instance v8, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v8, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "thread_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, v27

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-nez v5, :cond_e

    const/16 v5, 0x86

    move/from16 v0, v49

    if-ne v0, v5, :cond_c

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    if-eqz v28, :cond_9

    move-object/from16 v0, v28

    array-length v5, v0

    if-lez v5, :cond_9

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v14

    :cond_9
    const-string v6, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doInBackground MMS delivery report status="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    check-cast v3, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v11

    move v15, v4

    invoke-static/range {v9 .. v15}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v30

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Unexpected RuntimeException."

    move-object/from16 v0, v30

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    :try_start_3
    sget-object v7, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v9

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    check-cast v3, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v11

    invoke-static/range {v9 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const/16 v5, 0x88

    move/from16 v0, v49

    if-ne v0, v5, :cond_7

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    const-string v6, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doInBackground MMS read report status="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    check-cast v3, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v11

    move v15, v4

    invoke-static/range {v9 .. v15}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;I)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    check-cast v3, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v11

    invoke-static/range {v9 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const/16 v5, 0x86

    move/from16 v0, v49

    if-ne v0, v5, :cond_10

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    if-eqz v28, :cond_f

    move-object/from16 v0, v28

    array-length v5, v0

    if-lez v5, :cond_f

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v14

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    check-cast v3, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v10

    # invokes: Lcom/android/mms/transaction/PushReceiver;->saveReportToSms(Landroid/content/Context;IILjava/lang/String;)V
    invoke-static {v5, v6, v9, v10, v14}, Lcom/android/mms/transaction/PushReceiver;->access$100(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const/16 v5, 0x88

    move/from16 v0, v49

    if-ne v0, v5, :cond_7

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    check-cast v3, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v10

    # invokes: Lcom/android/mms/transaction/PushReceiver;->saveReportToSms(Landroid/content/Context;IILjava/lang/String;)V
    invoke-static {v5, v6, v9, v10, v14}, Lcom/android/mms/transaction/PushReceiver;->access$100(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v38, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransIdEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v25

    const/16 v5, 0x3d

    move-object/from16 v0, v25

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v25, v6

    if-ne v5, v6, :cond_11

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v48

    move-object/from16 v0, v25

    array-length v5, v0

    move-object/from16 v0, v48

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v0, v5, [B

    move-object/from16 v26, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    array-length v9, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v5, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    move-object/from16 v0, v25

    array-length v6, v0

    move-object/from16 v0, v48

    array-length v9, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v26

    invoke-static {v0, v5, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v38

    # invokes: Lcom/android/mms/transaction/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    invoke-static {v5, v0}, Lcom/android/mms/transaction/PushReceiver;->access$200(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v5

    if-nez v5, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Discard MMS Notification by IT Policy"

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v42

    if-eqz v42, :cond_13

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/android/mms/util/TelephonyUtils;->getMidByContentLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Lcom/android/mms/util/TelephonyUtils;->isDuplicateMMSbyMId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Discard MMS Notification isDuplicateMMSbyMId"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v32, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    const/16 v46, 0x0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v46

    :cond_14
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Lcom/android/mms/util/VipModeCTC;->isMessageBlocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    :goto_3
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PushReceiver isSpam = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v32, :cond_18

    sget-object v5, Lcom/android/mms/util/DummyFramework$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v32

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v7

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v31, :cond_15

    const-string v5, "safeNoti"

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_15

    new-instance v8, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v8, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "safe_message"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_15
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEcid()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/util/EcidLookup;->addSender(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_16

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    :cond_16
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "Mms:transaction"

    const-string v6, "is NOT DefaultSmsApp just save message"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;Lcom/google/android/mms/pdu/EncodedStringValue;)Z

    move-result v32

    goto/16 :goto_3

    :cond_18
    sget-object v18, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v15 .. v22}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;Z)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_4

    :cond_19
    if-eqz v32, :cond_1a

    sget-object v5, Lcom/android/mms/util/DummyFramework$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v32

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_4

    :cond_1a
    sget-object v17, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v19

    const/16 v20, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_4

    :catch_2
    move-exception v30

    const-string v5, "Mms:transaction"

    const-string v6, "safe_message update error"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1b
    if-eqz v32, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_1c
    const/16 v47, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v5

    if-nez v5, :cond_26

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    new-instance v47, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/transaction/TransactionServiceSecondary;

    move-object/from16 v0, v47

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_6
    const-string v5, "uri"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "type"

    const/4 v6, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v5, "sim-slot"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v29

    const/16 v24, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v24

    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getAppRestrictBackground(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v4

    move/from16 v20, v32

    invoke-static/range {v15 .. v20}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    if-nez v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v9, "mms"

    invoke-static {v5, v7, v6, v9}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v12, v13, v6}, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V

    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v12, v13, v6}, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V

    :cond_21
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v35

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUseDataSwitchDialog()Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    move/from16 v0, v24

    if-ne v0, v5, :cond_22

    const/4 v5, 0x1

    move/from16 v0, v35

    if-le v0, v5, :cond_22

    const-string v5, "persist.sys.dataprefer.simid"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v33

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    move/from16 v0, v33

    if-eq v4, v0, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] autoDownload mDataSwitchDialog to true"

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_22
    :goto_8
    if-nez v24, :cond_29

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v4

    move/from16 v20, v32

    invoke-static/range {v15 .. v20}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    if-nez v32, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v9, "mms"

    invoke-static {v5, v7, v6, v9}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v12, v13, v6}, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V

    :cond_24
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v5

    if-nez v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    if-nez v24, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v6, v9}, Lcom/android/mms/transaction/MessagingNotification;->updateMmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;I)Z

    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    if-eqz v7, :cond_7

    if-eqz v32, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v44

    if-eqz v44, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateMMSHistoryAsBlock(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_26
    new-instance v47, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v47

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_6

    :cond_27
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v24

    goto/16 :goto_7

    :cond_28
    const/16 v24, 0x0

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] autoDownload change to false"

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    :cond_29
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsMobiledataOff()Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Do not alert noti"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/util/TelephonyUtils;->getDataNetworkEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v4

    move/from16 v20, v32

    invoke-static/range {v15 .. v20}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    if-nez v32, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v9, "mms"

    invoke-static {v5, v7, v6, v9}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v12, v13, v6}, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V

    goto/16 :goto_9

    :cond_2c
    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Do not alert noti!!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->isDataAvailable(I)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsMobiledataOff()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableForceConnectMms()Z

    move-result v5

    if-eqz v5, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/util/TelephonyUtils;->getDoNotAlertDataAvailableInCallStatus(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v5, "Mms:transaction"

    const-string v6, "[PushReceiver] Do not alert noti, because CHN force connect mms when data off"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v6, v9, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    if-nez v32, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v9, "mms"

    invoke-static {v5, v7, v6, v9}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v12, v13, v6}, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V

    goto/16 :goto_9

    :cond_31
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PushReceiver] Skip downloading duplicate message: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v9, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
