.class public Lcom/android/mms/transaction/RetrieveAckTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveAckTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RetrieveAckTransaction"


# instance fields
.field private httpClient:Landroid/net/http/AndroidHttpClient;

.field private final mAckType:Ljava/lang/String;

.field private mIsSpam:Z

.field private mMessageId:J

.field private mRetryAckCnt:I

.field private final mTransactionId:Ljava/lang/String;

.field private post:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;ZI)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # J
    .param p5    # Ljava/lang/String;
    .param p6    # Lcom/android/mms/transaction/TransactionSettings;
    .param p7    # Ljava/lang/String;
    .param p8    # Z
    .param p9    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p6}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-wide p3, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    iput-object p7, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mTransactionId:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mIsSpam:Z

    iput p9, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mRetryAckCnt:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public process()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 23

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/android/mms/transaction/Transaction;->waitForActivatedMmsConnection(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Data not ready"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v19

    :try_start_1
    const-string v2, "RetrieveAckTransaction"

    invoke-static/range {v19 .. v19}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/transaction/RetrieveAckTimer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mTransactionId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mIsSpam:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mRetryAckCnt:I

    const/4 v13, 0x5

    invoke-direct/range {v5 .. v13}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    new-instance v20, Ljava/lang/Thread;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Ack Send Fail Retry"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Ack Send Complete"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v2, :cond_0

    const-string v2, "RetrieveAckTransaction"

    const-string v3, "abort post"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    return-void

    :cond_2
    :try_start_2
    const-string v2, "noticationtransaction"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mIsSpam:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tr_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    const/16 v22, 0x0

    const/16 v21, 0x0

    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    :cond_3
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v14

    new-instance v18, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v2, 0x12

    const/16 v3, 0x81

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1, v3, v14}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BII)V

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v5, "[Transaction : Notification Resp Ind]"

    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x140

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/mms/transaction/HexDump;->dump(Ljava/lang/String;[BJIILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_4
    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Ack Send Complete"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v2, :cond_6

    const-string v2, "RetrieveAckTransaction"

    const-string v3, "abort post"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    goto/16 :goto_0

    :cond_7
    :try_start_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :cond_8
    new-instance v18, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v2, 0x12

    const/16 v3, 0x81

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    goto :goto_2

    :cond_9
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    const-string v3, "RetrieveAckTransaction"

    const-string v6, "Ack Send Complete"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_a

    const-string v3, "RetrieveAckTransaction"

    const-string v6, "abort post"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    throw v2

    :cond_c
    :try_start_4
    const-string v2, "retrievetransaction"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v14

    new-instance v15, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v2, 0x12

    move-object/from16 v0, v22

    invoke-direct {v15, v2, v0, v14}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[BI)V

    :goto_5
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v5, "[Transaction : Retrive Ack Ind]"

    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v15}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x140

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/mms/transaction/HexDump;->dump(Ljava/lang/String;[BJIILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    new-instance v15, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v2, 0x12

    move-object/from16 v0, v22

    invoke-direct {v15, v2, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    goto :goto_5

    :cond_e
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v3, "insert-address-token"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v15, v2}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto :goto_6

    :cond_f
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v15}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7
.end method
