.class public Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiverSecondary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;
    }
.end annotation


# static fields
.field private static BootCompleted:Z = false

.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "MmsSystemEventReceiverSecondary"

.field private static final DEFAULT_MULTISIM_SLOT:I = 0x1

.field private static final DEFAULT_NETWORK_INFO:I = 0x1a

.field private static final DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String; = "mobile_mms2"

.field private static final EVENT_WAKE_UP_SERVICE:I = 0x1

.field private static final EVENT_WAKE_UP_SERVICE_NO_SVC:I = 0x2

.field private static final NO_SVC_MAX_RETRY_INTERVAL:J = 0xdbba0L

.field private static final NO_SVC_RETRY_INTERVAL:J = 0x493e0L

.field private static final OP_BOOT_COMPLETED:I = 0x1

.field private static final OP_DEFAULT_SIM_CHANGED:I = 0x3

.field private static final OP_SMS_RECEIVED:I = 0x2

.field private static SMSCCompleted:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms:transactionSecondary"

.field private static final WAKE_UP_TIMES:I = 0x5

.field private static final WAKE_UP_WAIT:I = 0xbb8

.field private static bExecutingEvent:Z

.field private static bFilterAttached:Z

.field private static hasStartedIMEITrackerService:Z

.field private static hasStartedSelloutSmsService:Z

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mFlagSim:I

.field private static mServiceLooper:Landroid/os/Looper;

.field static final mStartingServiceSync:Ljava/lang/Object;

.field private static mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

.field private static mUsbRegexs:[Ljava/lang/String;

.field private static mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;

.field private static sIsCompleteNoSvcRetry:Z

.field private static sIsRegNoSvcAlarm:Z

.field private static sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

.field private static sNoSvcRetryCount:I

.field private static sNoSvcStartTime:J

.field private static waitCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mStartingServiceSync:Ljava/lang/Object;

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bFilterAttached:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bExecutingEvent:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->BootCompleted:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedIMEITrackerService:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->SMSCCompleted:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedSelloutSmsService:Z

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcStartTime:J

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcRetryCount:I

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsCompleteNoSvcRetry:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .param p0    # Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;I)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # I

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->wakeUpService(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->wakeUpService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bExecutingEvent:Z

    return p0
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/Intent;

    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static cancelAlarmManager(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v3, "Mms:transactionSecondary"

    const-string v4, "cancelAlarmManager()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .param p0    # Landroid/app/Service;
    .param p1    # I

    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static hasRetrieveTransaction(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "msg_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v3, "Mms:transactionSecondary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasRetrieveTransaction(), mhasRetrieveTransaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method public static initNoSvcValue()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcStartTime:J

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcRetryCount:I

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsCompleteNoSvcRetry:Z

    return-void
.end method

.method public static isAutoRetrieve(I)Z
    .locals 5
    .param p0    # I

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v0

    :goto_0
    const-string v2, "Mms:transactionSecondary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoRetrieve slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", autoDownload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    goto :goto_0
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->registerForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;I)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    shl-int v3, v5, p1

    or-int/2addr v2, v3

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    :cond_1
    const-string v2, "Mms:transactionSecondary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MmsSystemEventReceiver] registerForConnectionStateChanges mFlagSim :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bFilterAttached:Z

    if-nez v2, :cond_4

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "Mms:transactionSecondary"

    const-string v3, "[MmsSystemEventReceiver] registerForConnectionStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    if-nez v2, :cond_3

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MmsSystemEventReceiverSecondary"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mServiceLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;

    sget-object v3, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsRetryInNoSvc()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsCompleteNoSvcRetry:Z

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasRetrieveTransaction(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->setAlarmManager(Landroid/content/Context;I)V

    sput-boolean v5, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    const-string v2, "Mms:transactionSecondary"

    const-string v3, "call SetAlarmManager - setAlarmManager()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-direct {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;-><init>()V

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    :cond_3
    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v5, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bFilterAttached:Z

    :goto_0
    return-void

    :cond_4
    const-string v2, "Mms:transactionSecondary"

    const-string v3, "[MmsSystemEventReceiver] Filter attached"

    invoke-static {v2, v3, p1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static registerForTetherStateChanges(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->unRegisterForTetherStateChanges(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "Mms:transactionSecondary"

    const-string v2, "[MmsSystemEventReceiver] registerForTetherStateChanges"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-direct {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    :cond_0
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restorePduNotificationStatus(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "st"

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "m_type = 130 AND st = 129"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const-string v0, "Mms:transactionSecondary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] restorePduNotificationStatus count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAlarmManager(Landroid/content/Context;I)V
    .locals 12
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v1, 0x0

    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.android.mms.transaction.NO_SVC_RETRY_ACTION"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "simSlot"

    invoke-virtual {v7, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/high16 v8, 0x8000000

    invoke-static {p0, v1, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcStartTime:J

    sget-wide v8, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcStartTime:J

    const-wide/32 v10, 0x493e0

    add-long v2, v8, v10

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v1, "Mms:transactionSecondary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAlarmManager() startTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;I)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    shl-int v1, v4, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    :goto_0
    const-string v0, "Mms:transactionSecondary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] unRegisterForConnectionStateChanges mFlagSim :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    if-nez v0, :cond_4

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsRetryInNoSvc()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    if-ne v0, v4, :cond_2

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->cancelAlarmManager(Landroid/content/Context;)V

    const-string v0, "Mms:transactionSecondary"

    const-string v1, "unRegisterForConnectionStateChanges - cancelAlarmManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->initNoSvcValue()V

    :cond_3
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    sput-boolean v3, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bFilterAttached:Z

    sput-boolean v3, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bExecutingEvent:Z

    return-void

    :cond_5
    sput v3, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mFlagSim:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static unRegisterForTetherStateChanges(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v0, "Mms:transactionSecondary"

    const-string v1, "[MmsSystemEventReceiver] unRegisterForTetherStateChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static wakeUpService(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->wakeUpService(Landroid/content/Context;IZ)V

    return-void
.end method

.method private static wakeUpService(Landroid/content/Context;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->wakeUpService(Landroid/content/Context;IZ)V

    return-void
.end method

.method private static wakeUpService(Landroid/content/Context;IZ)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Z

    const-string v1, "Mms:transactionSecondary"

    const-string v2, "[MmsSystemEventReceiver] wakeUpService: start transaction service ..."

    invoke-static {v1, v2, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sim-slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "isDataSwitchSuccess"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public isTestSimCard(Landroid/content/Context;)Z
    .locals 14
    .param p1    # Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v9, 0x1

    const/16 v0, 0x1c2

    const/4 v2, 0x1

    const/16 v1, 0x3e7

    const/16 v3, 0x63

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v11, "phone"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v12, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x3

    :try_start_0
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v11, "ITS"

    const-string v12, "[MmsSystemEventReceiver]  isTestSimCard MCC : "

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v11, "ITS"

    const-string v12, "[MmsSystemEventReceiver]  isTestSimCard MNC : "

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v11, 0x3e7

    if-ne v11, v5, :cond_1

    const/16 v11, 0x63

    if-ne v11, v6, :cond_1

    const-string v10, "ITS"

    const-string v11, "[MmsSystemEventReceiver]  isTestSimCard return TRUE"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v9

    :catch_0
    move-exception v4

    const-string v11, "ITS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MmsSystemEventReceiver] Exception occured! : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v11, 0x1c2

    if-ne v11, v5, :cond_2

    if-ne v9, v6, :cond_2

    const-string v10, "ITS"

    const-string v11, "[MmsSystemEventReceiver]  isTestSimCard return TRUE"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v29, "Mms:transactionSecondary"

    const-string v30, "[MmsSystemEventReceiver] Intent received "

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "Mms:transactionSecondary"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[MmsSystemEventReceiver] "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v29, "android.intent.action.CONTENT_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    const-string v29, "deleted_contents"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    if-eqz v10, :cond_0

    const-string v29, "Mms:transactionSecondary"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[MmsSystemEventReceiver] CONTENT_CHANGED_ACTION changed uri: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v29, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    const-string v29, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v29, "networkUnvailable"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    const-string v29, "simSlot"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const-string v29, "Mms:transactionSecondary"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[MmsSystemEventReceiver] ANY_DATA_STATE event received: state "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", unAvailable "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v29, "CONNECTED"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    if-nez v27, :cond_0

    sget-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bExecutingEvent:Z

    if-nez v29, :cond_0

    :cond_2
    const/16 v29, 0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCheckOtherSimSlotTransaction()Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCheckOtherSimSlotTransaction()Z

    move-result v29

    if-eqz v29, :cond_0

    if-nez v6, :cond_0

    :cond_3
    sget-object v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v29, 0x0

    sput v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I

    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bExecutingEvent:Z

    sget-object v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v29, "Mms:transactionSecondary"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[MmsSystemEventReceiver] CONNECTED with this slot : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v29, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const-string v29, "Mms:transactionSecondary"

    const-string v30, "[MmsSystemEventReceiver] ACTION_TETHER_STATE_CHANGED"

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v29, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    const/16 v28, 0x0

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mUsbRegexs:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    aget-object v20, v7, v14

    move-object/from16 v23, v20

    check-cast v23, Ljava/lang/String;

    sget-object v8, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mUsbRegexs:[Ljava/lang/String;

    array-length v0, v8

    move/from16 v17, v0

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    aget-object v21, v8, v13

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    const/16 v28, 0x1

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_1

    :cond_7
    invoke-static/range {v28 .. v28}, Lcom/android/mms/MmsConfig;->setTetheringMode(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v29, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->restorePduNotificationStatus(Landroid/content/Context;)V

    sget-object v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->BootCompleted:Z

    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_a

    const-string v29, "INU"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    const-string v29, "INS"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    const-string v29, "TML"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    :cond_9
    sget-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->SMSCCompleted:Z

    if-eqz v29, :cond_a

    sget-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedIMEITrackerService:Z

    if-nez v29, :cond_a

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedIMEITrackerService:Z

    :cond_a
    sget-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedSelloutSmsService:Z

    if-nez v29, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSSMS()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-virtual/range {p0 .. p2}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->startSelloutSms(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedSelloutSmsService:Z

    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/ReservationManager;->resetAfterConnected()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v29

    if-eqz v29, :cond_c

    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPDP_PARAM(Landroid/content/Context;Z)V

    const-string v29, "Mms:transactionSecondary"

    const-string v30, "Set true Booted"

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoSmsSending()Z

    move-result v29

    if-eqz v29, :cond_d

    const-string v29, "ril.noti_sim_iccid"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v29, "Mms:transactionSecondary"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The card is iccId  = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v29, "Enabled"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    if-eqz v15, :cond_d

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/oem/AutoSms;->init(Landroid/content/Context;Z)V

    :cond_d
    const-class v29, Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v29, "result"

    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static/range {p1 .. p2}, Lcom/android/mms/transaction/SmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    const-string v29, "android.provider.Telephony.GET_SMSC"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->SMSCCompleted:Z

    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_0

    const-string v29, "INU"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_f

    const-string v29, "INS"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_f

    const-string v29, "TML"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    :cond_f
    sget-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedIMEITrackerService:Z

    if-nez v29, :cond_0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasStartedIMEITrackerService:Z

    goto/16 :goto_0

    :cond_10
    const-string v29, "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_0

    const-string v29, "INU"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_11

    const-string v29, "INS"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_11

    const-string v29, "TML"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    :cond_11
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_12
    const-string v29, "com.android.mms.transaction.NO_SVC_RETRY_ACTION"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    const-string v29, "simSlot"

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    sget v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcRetryCount:I

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->hasRetrieveTransaction(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_13

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->isAutoRetrieve(I)Z

    move-result v29

    if-eqz v29, :cond_0

    sget-object v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;

    sget-object v30, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcRetryCount:I

    add-int/lit8 v29, v29, 0x1

    sput v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcRetryCount:I

    const-string v29, "Mms:transactionSecondary"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onReceive - NO_SVC_RETRY_ACTION, sNoSvcRetryCount = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcRetryCount:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    sget-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->cancelAlarmManager(Landroid/content/Context;)V

    const-string v29, "Mms:transactionSecondary"

    const-string v30, "onReceive - NO_SVC_RETRY_ACTION - cancelAlarmManager()"

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->initNoSvcValue()V

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sget-wide v31, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sNoSvcStartTime:J

    sub-long v11, v29, v31

    const-wide/32 v29, 0xdbba0

    cmp-long v29, v11, v29

    if-lez v29, :cond_16

    sget-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->cancelAlarmManager(Landroid/content/Context;)V

    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsRegNoSvcAlarm:Z

    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->sIsCompleteNoSvcRetry:Z

    :cond_16
    const-string v29, "Mms:transactionSecondary"

    const-string v30, "onReceive - NO_SVC_RETRY_ACTION, cancelAlarmManager() - 3rd try finished"

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;
    .param p3    # I

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/mms/transaction/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0}, Lcom/android/mms/transaction/CscParser;->getInstance(Ljava/lang/String;)Lcom/android/mms/transaction/CscParser;

    move-result-object v3

    const-string v9, "Settings.Messages.SMS.ImeiTracker"

    invoke-virtual {v3, v9}, Lcom/android/mms/transaction/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v9, "on"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "ITS"

    const-string v10, "[MmsSystemEventReceiver] startTracker... "

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->isTestSimCard(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    move v5, v8

    :goto_0
    const-string v9, "ITS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[MmsSystemEventReceiver] sendSms : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v8, :cond_4

    const-string v9, "ITS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[MmsSystemEventReceiver] Starting Tracker Service Context : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v6

    if-ne v6, v8, :cond_2

    const-string v8, "com.android.mms.transaction.IMEITracker.IMEITrackerService"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v8, "ITS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MmsSystemEventReceiver] Action::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v8, "op"

    invoke-virtual {v1, v8, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v8, 0x2

    if-ne p3, v8, :cond_0

    const-string v9, "pduslocal"

    const-string v8, "pdus"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v8, "ITS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MmsSystemEventReceiver]   Service Started Successfully..... Obj = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_2
    const-string v8, "com.android.mms.transaction.IMEITracker.IMEITrackerService_DS"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v8, "ITS"

    const-string v9, "[MmsSystemEventReceiver]   Service object is NULL"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v8, "ITS"

    const-string v9, "[MmsSystemEventReceiver] sendSms is FALSE, It is TEST SIM..."

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v8, "ITS"

    const-string v9, "[MmsSystemEventReceiver]  CSC Failed !!!!"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startSelloutSms(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getSsmsInfo(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "Mms:transactionSecondary"

    const-string v4, "[MmsSystemEventReceiver] startSelloutSms "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v3, "ssms_enable"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "ssms_state"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "Mms:transactionSecondary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSystemEventReceiver] startSelloutSms SSMS_enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SSMS_state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const-class v3, Lcom/android/mms/transaction/SelloutSmsService;

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
