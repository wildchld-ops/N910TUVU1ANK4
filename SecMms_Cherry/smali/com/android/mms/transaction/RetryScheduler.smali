.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;

.field private static sInstance2:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCall:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    new-instance v0, Lcom/android/mms/transaction/RetryScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler$1;-><init>(Lcom/android/mms/transaction/RetryScheduler;)V

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/RetryScheduler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/RetryScheduler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/RetryScheduler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/transaction/RetryScheduler;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance2:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance2:Lcom/android/mms/transaction/RetryScheduler;

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance2:Lcom/android/mms/transaction/RetryScheduler;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    :cond_2
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    goto :goto_0
.end method

.method private getResponseStatus(J)I
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v8, :cond_2

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryScheduler] Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v8

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getResponseText(J)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "resp_txt"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v8, :cond_2

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response text is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v8

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getRetrieveStatus(J)I
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v8, :cond_2

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryScheduler] Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v8

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private scheduleRetry(Landroid/net/Uri;Lcom/android/mms/transaction/Transaction;)V
    .locals 43

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v27

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v38

    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v41

    const-string v3, "protocol"

    const-string v4, "mms"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "message"

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_5

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "msg_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "retry_index"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v35, v3, 0x1

    const/16 v21, 0x1

    new-instance v36, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-direct {v0, v3, v1}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    new-instance v42, Landroid/content/ContentValues;

    const/4 v3, 0x4

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v3, 0x82

    move/from16 v0, v29

    if-ne v0, v3, :cond_6

    const/16 v24, 0x1

    :goto_0
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getResponseStatus(J)I

    move-result v31

    const/16 v20, 0x0

    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] respStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v24, :cond_c

    sparse-switch v31, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v20, :cond_1

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    const/16 v32, 0x0

    :cond_1
    const/16 v3, 0xe0

    move/from16 v0, v31

    if-lt v0, v3, :cond_2

    const/16 v3, 0xff

    move/from16 v0, v31

    if-gt v0, v3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xe1

    move/from16 v0, v31

    if-ne v0, v3, :cond_11

    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v3, "Sprint"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c013c

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    :goto_2
    const/16 v32, 0x0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v26

    const/4 v3, 0x1

    move/from16 v0, v26

    if-le v0, v3, :cond_3

    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v38

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    const-string v3, "Mms:transaction"

    const-string v4, "[RetryScheduler] scheduleRetry retry change to false"

    move/from16 v0, v38

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v32, 0x0

    :cond_3
    invoke-virtual/range {v36 .. v36}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v3

    move/from16 v0, v35

    if-ge v0, v3, :cond_12

    if-eqz v32, :cond_12

    invoke-virtual/range {v36 .. v36}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v3

    add-long v33, v17, v3

    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] scheduleRetry: retry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is scheduled at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v33, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms from now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "due_time"

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v24, :cond_4

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :cond_4
    :goto_3
    const-string v3, "err_type"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "retry_index"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "last_try"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v10, v42

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_5
    return-void

    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_7

    const v20, 0x7f0c031f

    goto/16 :goto_1

    :cond_7
    const v20, 0x7f0c0037

    goto/16 :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_8

    const v20, 0x7f0c01bb

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v3, "Sprint"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v20, 0x7f0c01ba

    goto/16 :goto_1

    :cond_9
    const v20, 0x7f0c013d

    goto/16 :goto_1

    :cond_a
    const v20, 0x7f0c01ba

    goto/16 :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_b

    const v20, 0x7f0c01bb

    goto/16 :goto_1

    :cond_b
    const v20, 0x7f0c01ba

    goto/16 :goto_1

    :sswitch_3
    const v20, 0x7f0c01bd

    goto/16 :goto_1

    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-nez v3, :cond_0

    const v20, 0x7f0c01bc

    goto/16 :goto_1

    :sswitch_5
    const v20, 0x7f0c01bc

    goto/16 :goto_1

    :sswitch_6
    const v20, 0x7f0c013c

    goto/16 :goto_1

    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_0

    const v20, 0x7f0c013c

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getRetrieveStatus(J)I

    move-result v31

    const/16 v3, 0xe4

    move/from16 v0, v31

    if-ne v0, v3, :cond_e

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    const/16 v32, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :cond_e
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xe0

    move/from16 v0, v31

    if-ne v0, v3, :cond_1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :cond_f
    :try_start_3
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c013d

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    if-eqz v19, :cond_10

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v3

    :cond_11
    :try_start_4
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c013c

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    goto/16 :goto_2

    :cond_12
    const/16 v21, 0xa

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v15

    const-wide/16 v39, -0x1

    if-eqz v15, :cond_14

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v39

    :cond_13
    if-eqz v15, :cond_14

    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_14
    const-wide/16 v3, -0x1

    cmp-long v3, v39, v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v39

    move/from16 v2, v38

    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;JI)V

    :cond_15
    :goto_6
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x87

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :goto_7
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/mms/transaction/SendTransaction;

    if-eqz v3, :cond_4

    const/4 v13, 0x0

    const/16 v30, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v9, v3

    const/4 v3, 0x1

    const-string v4, "msg_id"

    aput-object v4, v9, v3

    const-string v10, "app_id>0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v15

    if-eqz v15, :cond_17

    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v30

    :cond_16
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_17
    if-lez v13, :cond_4

    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v30

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v3

    if-eqz v15, :cond_18

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v3

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-wide/from16 v0, v39

    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;JI)V

    goto/16 :goto_6

    :cond_1a
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_7

    :catchall_2
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1c
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] Cannot found correct pending status for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_7
        0x82 -> :sswitch_2
        0x83 -> :sswitch_7
        0x84 -> :sswitch_0
        0x85 -> :sswitch_7
        0x86 -> :sswitch_3
        0x87 -> :sswitch_7
        0x88 -> :sswitch_7
        0xc2 -> :sswitch_4
        0xe0 -> :sswitch_6
        0xe1 -> :sswitch_1
        0xe2 -> :sswitch_7
        0xe4 -> :sswitch_5
    .end sparse-switch
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;I)V

    return-void
.end method

.method public static setRetryAlarm(Landroid/content/Context;I)V
    .locals 10

    const/4 v9, 0x1

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v6, p1, v7, v8}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "due_time"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v6

    if-nez v6, :cond_5

    if-ne p1, v9, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ONALARM"

    const/4 v7, 0x0

    const-class v8, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v5, v6, v7, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "sim-slot"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/4 v6, 0x0

    const/high16 v7, 0x40000000

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RetryScheduler] Next retry is scheduled at"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms from now"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ONALARM"

    const/4 v7, 0x0

    const-class v8, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v5, v6, v7, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v6
.end method


# virtual methods
.method public unregisterReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/RetryScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms:transaction"

    const-string v2, "Reciever is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v3, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v1

    :cond_0
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RetryScheduler] update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    instance-of v5, v3, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v5, :cond_1

    instance-of v5, v3, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v5, :cond_1

    instance-of v5, v3, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v5, :cond_1

    instance-of v5, v3, Lcom/android/mms/transaction/SendTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_3

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/net/Uri;Lcom/android/mms/transaction/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-virtual {v3, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;I)V

    :goto_0
    return-void

    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v3, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;I)V

    :goto_1
    throw v5

    :cond_4
    iget-object v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    goto :goto_1
.end method
