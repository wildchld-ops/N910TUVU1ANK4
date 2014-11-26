.class public Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;
.super Lcom/android/mms/rcs/transaction/RcsBaseTransaction;
.source "RcsFtSendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_TRANSACTION_TIMEOUT:I = 0x1

.field private static final GROUP:Ljava/lang/String; = "group"

.field private static final SINGLE:Ljava/lang/String; = "single"

.field private static final TAG:Ljava/lang/String; = "Mms/RcsFtSendTransaction"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsSending:Z

.field private mMode:Ljava/lang/String;

.field private mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

.field private final mSTransactionSync:Ljava/lang/Object;

.field private mStatus:I

.field private mThread:Ljava/lang/Thread;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # I

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v5, p8

    move-wide v6, p4

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mSTransactionSync:Ljava/lang/Object;

    new-instance v1, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$1;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$1;-><init>(Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;)V

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mIsSending:Z

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->setChatId(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mMode:Ljava/lang/String;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mStatus:I

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/rcs/RcsQuery;->moveRcsMessageToOutBox(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getChatId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;-><init>(Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$1;)V

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

    invoke-virtual {v1, v2, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;)Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mSTransactionSync:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public extractIdsToAddresses(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 18
    .param p1    # Ljava/lang/String;

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
    .param p1    # [Ljava/lang/String;
    .param p2    # Ljava/lang/String;

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

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mMode:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipients()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getRecipients()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendReqURI()Landroid/net/Uri;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mStatus:I

    return v0
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

    const/4 v0, 0x2

    return v0
.end method

.method public isSending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mIsSending:Z

    return v0
.end method

.method public onFTAttached(Ljava/lang/Long;J)V
    .locals 15
    .param p1    # Ljava/lang/Long;
    .param p2    # J

    const-string v2, "Mms/RcsFtSendTransaction"

    const-string v6, "onFTAttached(final Long ftSessionId, long requestId)"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v11, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/mms/rcs/RcsQuery;->getFtBySessionId(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v11}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->fillFromCursor(ZLandroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v2, "chat_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "remote_uri"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "direction"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v2, 0x1

    if-ne v12, v2, :cond_3

    const/4 v12, 0x4

    :goto_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v9, v2, v8, v6}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getThreadByChatId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Long;

    move-result-object v14

    const-string v2, "file_path"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "file_path"

    invoke-virtual {v5, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "file_name"

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "session_id"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "thread_id"

    invoke-virtual {v5, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "chat_session_id"

    invoke-virtual {v5, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "address"

    iget-object v6, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "service_type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    const-string v2, "Mms/RcsFtSendTransaction"

    const-string v6, "count is 0, this is not normal case."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public process()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mIsSending:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/RcsFtSendTransaction"

    const-string v1, "already sending. ignore sending event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mIsSending:Z

    goto :goto_0
.end method

.method public requestChatId()V
    .locals 13

    const/4 v12, 0x1

    const-string v8, "Mms/RcsFtSendTransaction"

    const-string v9, "requestChatId()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getRecipients()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getThreadId()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/mms/rcs/RcsQuery;->getAddressByRcsThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_0

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "address is null"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v8, "Mms/RcsFtSendTransaction"

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

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/android/mms/rcs/RcsChatManager;->generateImsUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getRecipients()Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v8, ", "

    invoke-virtual {p0, v6, v8}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->formatNames([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    array-length v8, v6

    if-le v8, v12, :cond_4

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getThreadId()J

    move-result-wide v9

    invoke-static {v4, v0, v9, v10}, Lcom/android/mms/rcs/transaction/ActionsFactory;->createChat(Ljava/util/ArrayList;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    iget-object v8, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    sget v10, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->sTransactionTimeout:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v8, "Mms/RcsFtSendTransaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[RcsFTSendTransaction] Transaction timer set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->sTransactionTimeout:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v8, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const-string v9, ""

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getThreadId()J

    move-result-wide v10

    invoke-static {v4, v9, v10, v11}, Lcom/android/mms/rcs/transaction/ActionsFactory;->createChat(Ljava/util/ArrayList;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2
.end method

.method public run()V
    .locals 19

    const-string v1, "Mms/RcsFtSendTransaction"

    const-string v2, "run - sending"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "Mms/RcsFtSendTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FT uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "file_path"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    const-string v1, "group"

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getChatId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "Mms/RcsFtSendTransaction"

    const-string v2, "send Group FT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v13, v14}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->groupChatattachFile(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :cond_3
    :try_start_2
    const-string v1, "single"

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getChatId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getRecipients()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getThreadId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/mms/rcs/RcsQuery;->getAddressByRcsThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    :goto_1
    move-object/from16 v7, v18

    array-length v15, v7

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_1

    aget-object v17, v7, v12

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v16, :cond_7

    :cond_4
    const-string v1, "Mms/RcsFtSendTransaction"

    const-string v2, "Null or empty telephone number!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v1, "Mms/RcsFtSendTransaction"

    const-string v2, "unregister called twice!!!! ignore event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getRecipients()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsChatManager;->generateImsUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "Mms/RcsFtSendTransaction"

    const-string v2, "send single FT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v13, v14}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->attachFile(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catch_1
    move-exception v10

    const-string v1, "Mms/RcsFtSendTransaction"

    const-string v2, "unregister called twice!!!! ignore event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsFtSendTransaction$ResponseReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    throw v1

    :catch_2
    move-exception v10

    const-string v2, "Mms/RcsFtSendTransaction"

    const-string v3, "unregister called twice!!!! ignore event"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public update(Lcom/android/mms/rcs/transaction/ImObservable;)V
    .locals 2
    .param p1    # Lcom/android/mms/rcs/transaction/ImObservable;

    const-string v0, "Mms/RcsFtSendTransaction"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateChatId(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session_id is null AND normal_thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->setChatId(Ljava/lang/String;)V

    return-void
.end method
