.class public Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;
.super Lcom/android/mms/rcs/transaction/RcsBaseTransaction;
.source "RcsChatSendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_TRANSACTION_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/RcsChatSendTransaction"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsSending:Z

.field private mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

.field private final mSTransactionSync:Ljava/lang/Object;

.field private mThread:Ljava/lang/Thread;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p8

    move-wide v5, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mSTransactionSync:Ljava/lang/Object;

    new-instance v0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;-><init>(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mIsSending:Z

    if-eqz p6, :cond_0

    invoke-virtual {p0, p6}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->setChatId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsQuery;->moveRcsMessageToOutBox(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getChatId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;-><init>(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mSTransactionSync:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public extractIdsToAddresses(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x1

    move-object v9, v15

    array-length v13, v9

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_4

    aget-object v14, v9, v12

    const/16 v17, 0x0

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "content://mms-sms/canonical-address/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v17, :cond_2

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v8, 0x0

    :cond_5
    return-object v8
.end method

.method public formatNames([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    array-length v8, p1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object v1, p1

    array-length v6, v1

    const/4 v5, 0x0

    move v4, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-static {p2, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getChatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendReqURI()Landroid/net/Uri;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    invoke-super {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getThreadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransportType()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getTransportType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mIsSending:Z

    return v0
.end method

.method public onMessageSent(JJ)V
    .locals 24

    const-string v2, "Mms/RcsChatSendTransaction"

    const-string v4, "onMessageSent(Long, Long)"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/mms/rcs/RcsQuery;->getMessageById(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mms/RcsChatSendTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageSent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->fillFromCursor(ZLandroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v2, "chat_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v2, "remote_uri"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "status"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v2, "session_id"

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "address"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "status"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "service_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    if-lez v19, :cond_0

    if-eqz v21, :cond_0

    const-string v2, "inserted_timestamp"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v2, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v16, 0x2

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v10, p3

    invoke-virtual/range {v6 .. v17}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->updateHistoryForRcsChat(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public onMessageSentUpdate(JZLjava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, -0x1

    if-eqz p3, :cond_0

    const-string v0, "type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    if-nez p3, :cond_1

    const-string v0, "fallback error"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "onMessageSentUpdate, send Legacy Message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->sendLegacyMessage(Ljava/lang/Long;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "im-transaction-done"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "status"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {v7, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "im-transaction-done"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uri"

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcsdb_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    if-nez p3, :cond_2

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "onMessageSentUpdate, update failed notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    :cond_2
    const-string v0, "Mms/RcsChatSendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageSentUpdate, reason is : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "affectedrows : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "im-transaction-done"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1
.end method

.method public process()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mIsSending:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "already sending. ignore sending event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mIsSending:Z

    goto :goto_0
.end method

.method public requestChatId()V
    .locals 13

    const/4 v12, 0x1

    const-string v8, "Mms/RcsChatSendTransaction"

    const-string v9, "requestChatId()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getChatId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "Mms/RcsChatSendTransaction"

    const-string v9, "Already have, Ignore request chatId"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->process()V

    :goto_0
    iget-object v8, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    sget v10, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->sTransactionTimeout:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v8, "Mms/RcsChatSendTransaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[RcsSendTransaction] Transaction timer set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->sTransactionTimeout:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getRecipients()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getThreadId()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/mms/rcs/RcsQuery;->getAddressByRcsThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_1

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "address is null"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_1
    const-string v8, "Mms/RcsChatSendTransaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recipientIds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/android/mms/rcs/RcsChatManager;->generateImsUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getRecipients()Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    const-string v8, ", "

    invoke-virtual {p0, v6, v8}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->formatNames([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    array-length v8, v6

    if-le v8, v12, :cond_5

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getThreadId()J

    move-result-wide v9

    invoke-static {v4, v0, v9, v10}, Lcom/android/mms/rcs/transaction/ActionsFactory;->createChat(Ljava/util/ArrayList;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const-string v9, ""

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getThreadId()J

    move-result-wide v10

    invoke-static {v4, v9, v10, v11}, Lcom/android/mms/rcs/transaction/ActionsFactory;->createChat(Ljava/util/ArrayList;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public run()V
    .locals 14

    const/4 v13, 0x1

    const-string v0, "Mms/RcsChatSendTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run - sending : CHAT uri = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v3

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v2, "chat sending..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getChatId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_delivery"

    invoke-static/range {v0 .. v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v10

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v2, "unregister called twice!!!! ignore event"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_2
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

    invoke-virtual {v2, v11}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v10

    const-string v2, "Mms/RcsChatSendTransaction"

    const-string v11, "unregister called twice!!!! ignore event"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public update(Lcom/android/mms/rcs/transaction/ImObservable;)V
    .locals 2

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateChatId(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Mms/RcsChatSendTransaction"

    const-string v3, "updateChatId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session_id is null AND normal_thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->setChatId(Ljava/lang/String;)V

    return-void
.end method
