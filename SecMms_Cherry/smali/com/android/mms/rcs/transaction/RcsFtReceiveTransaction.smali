.class public Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;
.super Lcom/android/mms/rcs/transaction/RcsBaseTransaction;
.source "RcsFtReceiveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EVENT_TRANSACTION_TIMEOUT:I = 0x1

.field private static final GROUP:Ljava/lang/String; = "group"

.field private static final SINGLE:Ljava/lang/String; = "single"

.field private static final TAG:Ljava/lang/String; = "Mms/RcsFtSendTransaction"


# instance fields
.field private mIsReceiving:Z

.field private mMode:Ljava/lang/String;

.field private mSessionId:J

.field private mStatus:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
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

    iput-object p3, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mIsReceiving:Z

    if-eqz p6, :cond_0

    invoke-virtual {p0, p6}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->setChatId(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mMode:Ljava/lang/String;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mStatus:I

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRcsFtSessionId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mSessionId:J

    return-void
.end method


# virtual methods
.method public acceptDownload()V
    .locals 9

    const-string v0, "Mms/RcsFtSendTransaction"

    const-string v1, "acceptDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mIsReceiving:Z

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mSessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsQuery;->getFtBySessionId(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcsdb_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->buildAcceptIntent(J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->getChatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mMode:Ljava/lang/String;

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

    iget v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mStatus:I

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

    const/4 v0, 0x3

    return v0
.end method

.method public isSending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mIsReceiving:Z

    return v0
.end method

.method public process()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mIsReceiving:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/RcsFtSendTransaction"

    const-string v1, "already sending. ignore sending event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mIsReceiving:Z

    goto :goto_0
.end method

.method public run()V
    .locals 12

    const-string v0, "Mms/RcsFtSendTransaction"

    const-string v1, "run - retrieving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mSessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsQuery;->getFtBySessionId(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/mms/rcs/transaction/Utils;->canBeDownload(Landroid/content/Context;I)I

    move-result v7

    const/4 v0, 0x1

    if-ne v7, v0, :cond_2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcsdb_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->buildAcceptIntent(J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne v7, v0, :cond_3

    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "status"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcsdb_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->mSessionId:J

    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->buildCancelIntent(J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "im-transaction-done"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public update(Lcom/android/mms/rcs/transaction/ImObservable;)V
    .locals 2
    .param p1    # Lcom/android/mms/rcs/transaction/ImObservable;

    const-string v0, "Mms/RcsFtSendTransaction"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
