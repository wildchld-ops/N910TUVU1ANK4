.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;
    }
.end annotation


# static fields
.field private static BootCompleted:Z = false

.field private static final DATASWITCH_RETRY_INTERVAL:I = 0x7d0

.field private static final DATA_SWITCH_RETRY_ACTION:Ljava/lang/String; = "com.android.mms.transaction.DATA_SWITCH_RETRY_ACTION"

.field private static final DATA_SWITCH_SLOT_INIT:I = -0x1

.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "MmsSystemEventReceiver"

.field private static final DEFAULT_MULTISIM_SLOT:I = 0x0

.field private static final DEFAULT_NETWORK_INFO:I = 0x2

.field private static final DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String; = "mobile_mms"

.field private static final EVENT_WAKE_UP_SERVICE:I = 0x1

.field private static final EVENT_WAKE_UP_SERVICE_NO_SVC:I = 0x2

.field private static final MAXIMUM_ATTEMPTS_RETRY_DATASWITCH:I = 0xa

.field private static final NO_SVC_MAX_RETRY_INTERVAL:J = 0xdbba0L

.field private static final NO_SVC_RETRY_INTERVAL:J = 0x493e0L

.field private static final OP_BOOT_COMPLETED:I = 0x1

.field private static final OP_DEFAULT_SIM_CHANGED:I = 0x3

.field private static final OP_SMS_RECEIVED:I = 0x2

.field private static SMSCCompleted:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static final WAITING_SLOT_FOR_MMS_INIT:I = -0x1

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

.field private static mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

.field private static mUsbRegexs:[Ljava/lang/String;

.field private static mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

.field private static sAttemptRetryCountDataSwitch:I

.field protected static sDataConnectionWaitCount:[I

.field private static sDataSwitchStartTime:J

.field private static sFinalTryDataSwitchSlot:I

.field private static sIsCompleteNoSvcRetry:Z

.field private static sIsDataSwitchStatus:Z

.field private static sIsFailFinalTryDataSwitch:Z

.field private static sIsRegNoSvcAlarm:Z

.field private static sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

.field private static sNoSvcRetryCount:I

.field private static sNoSvcStartTime:J

.field private static waitCount:I


# instance fields
.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mMultiSimConnMgr:Landroid/net/MultiSimConnectivityManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTelephonyManager2:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bExecutingEvent:Z

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->BootCompleted:Z

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->SMSCCompleted:Z

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedSelloutSmsService:Z

    sput v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    sput v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    sput-wide v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcStartTime:J

    sput v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcRetryCount:I

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsCompleteNoSvcRetry:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sFinalTryDataSwitchSlot:I

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsDataSwitchStatus:Z

    sput-wide v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataSwitchStartTime:J

    sput v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sAttemptRetryCountDataSwitch:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataConnectionWaitCount:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    sput-object p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    sput p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bExecutingEvent:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z

    return v0
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManagerForDataSwitch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setAlarmManagerForDataSwitch(Landroid/content/Context;I)V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

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

.method private callSwitchDataNetworkForMMS(I)V
    .locals 3

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MultiSimConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mMultiSimConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setFinalTryDataSwitchSlot(I)V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mMultiSimConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/MultiSimConnectivityManager;->switchDataNetworkForMMS(I)V

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] callSwitchDataNetworkForMMS(), TransactionService.mSwitching true, simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelAlarmManager(Landroid/content/Context;)V
    .locals 5

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.android.mms.transaction.NO_SVC_RETRY_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v3, "Mms:transaction"

    const-string v4, "cancelAlarmManager()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static cancelAlarmManagerForDataSwitch(Landroid/content/Context;)V
    .locals 5

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.android.mms.transaction.DATA_SWITCH_RETRY_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v3, "Mms:transaction"

    const-string v4, "[MmsSystemEventReceiver] cancelAlarmManagerForDataSwitch()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2

    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

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

.method protected static getFinalTryDataSwitchSlot()I
    .locals 3

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] getFinalTryDataSwitchSlot(), sFinalTryDataSwitchSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sFinalTryDataSwitchSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sFinalTryDataSwitchSlot:I

    return v0
.end method

.method public static hasRetrieveTransaction(Landroid/content/Context;)Z
    .locals 7

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;

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

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v3, "Mms:transaction"

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

    sput-wide v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcStartTime:J

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcRetryCount:I

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsCompleteNoSvcRetry:Z

    return-void
.end method

.method public static isAutoRetrieve(I)Z
    .locals 5

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
    const-string v2, "Mms:transaction"

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

.method private registerCallStateListener()V
    .locals 3

    const/16 v2, 0x20

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] registerCallStateListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;I)V
    .locals 6

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
    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    shl-int v3, v5, p1

    or-int/2addr v2, v3

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    :cond_1
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MmsSystemEventReceiver] registerForConnectionStateChanges mFlagSim :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    if-nez v2, :cond_6

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    shl-int v3, v5, p1

    or-int/2addr v2, v3

    sput v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MmsSystemEventReceiver] after unRegisterForConnectionStateChanges mFlagSim :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] registerForConnectionStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-nez v2, :cond_5

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MmsSystemEventReceiver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mServiceLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    sget-object v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsRetryInNoSvc()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsCompleteNoSvcRetry:Z

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasRetrieveTransaction(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setAlarmManager(Landroid/content/Context;I)V

    sput-boolean v5, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    const-string v2, "Mms:transaction"

    const-string v3, "call SetAlarmManager - setAlarmManager()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>()V

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    :cond_5
    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v5, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    :goto_0
    return-void

    :cond_6
    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] Filter attached"

    invoke-static {v2, v3, p1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static registerForTetherStateChanges(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForTetherStateChanges(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "Mms:transaction"

    const-string v2, "[MmsSystemEventReceiver] registerForTetherStateChanges"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    :cond_0
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restorePduNotificationStatus(Landroid/content/Context;)V
    .locals 7

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

    const-string v0, "Mms:transaction"

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

    const/4 v1, 0x0

    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/transaction/MmsSystemEventReceiver;

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

    sput-wide v8, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcStartTime:J

    sget-wide v8, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcStartTime:J

    const-wide/32 v10, 0x493e0

    add-long v2, v8, v10

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v1, "Mms:transaction"

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

.method private static setAlarmManagerForDataSwitch(Landroid/content/Context;I)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManagerForDataSwitch(Landroid/content/Context;)V

    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.android.mms.transaction.DATA_SWITCH_RETRY_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "simSlot"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/high16 v5, 0x8000000

    invoke-static {p0, v9, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataSwitchStartTime:J

    sget-wide v5, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataSwitchStartTime:J

    const-wide/16 v7, 0x7d0

    add-long v3, v5, v7

    invoke-virtual {v0, v9, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MmsSystemEventReceiver] setAlarmManagerForDataSwitch() startTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static setFinalTryDataSwitchSlot(I)V
    .locals 3

    sput p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sFinalTryDataSwitchSlot:I

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] setFinalTryDataSwitchSlot(), sFinalTryDataSwitchSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sFinalTryDataSwitchSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    shl-int v1, v4, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    :goto_0
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] unRegisterForConnectionStateChanges mFlagSim :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    if-nez v0, :cond_6

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsRetryInNoSvc()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    if-ne v0, v4, :cond_3

    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManager(Landroid/content/Context;)V

    const-string v0, "Mms:transaction"

    const-string v1, "unRegisterForConnectionStateChanges - cancelAlarmManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->initNoSvcValue()V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] context.unregisterReceiver(sMmsSystemEventReceiver), mFlagSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    sput-boolean v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    sput-boolean v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bExecutingEvent:Z

    return-void

    :cond_7
    sput v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static unRegisterForTetherStateChanges(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] unRegisterForTetherStateChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTetherEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

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

.method private unregisterCallstateListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] unregisterCallstateListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static wakeUpService(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;IZ)V

    return-void
.end method

.method private static wakeUpService(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;IZ)V

    return-void
.end method

.method private static wakeUpService(Landroid/content/Context;IZ)V
    .locals 3

    const-string v1, "Mms:transaction"

    const-string v2, "[MmsSystemEventReceiver] wakeUpService: start transaction service ..."

    invoke-static {v1, v2, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

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
    .locals 36

    const-string v32, "Mms:transaction"

    const-string v33, "[MmsSystemEventReceiver] Intent received "

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v32, "Mms:transaction"

    const-string v33, "onReceive : action is null so return!!!"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v32, "android.intent.action.CONTENT_CHANGED"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "deleted_contents"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    if-eqz v10, :cond_0

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] CONTENT_CHANGED_ACTION changed uri: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    goto :goto_0

    :cond_2
    const-string v32, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    const-string v32, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v32, "networkUnvailable"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    const-string v32, "simSlot"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] ANY_DATA_STATE event received: state "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", unAvailable "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v32, "CONNECTED"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_3

    if-nez v30, :cond_0

    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bExecutingEvent:Z

    if-nez v32, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v32

    if-nez v32, :cond_4

    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const/16 v32, 0x0

    sput v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bExecutingEvent:Z

    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] mFlagSim :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    const/16 v33, 0x1

    shl-int v33, v33, v27

    and-int v32, v32, v33

    if-nez v32, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v32

    if-nez v32, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v32

    if-eqz v32, :cond_8

    :cond_5
    if-nez v27, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v32

    if-nez v32, :cond_8

    :cond_6
    invoke-static/range {v27 .. v27}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCheckOtherSimSlotTransaction()Z

    move-result v32

    if-eqz v32, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCheckOtherSimSlotTransaction()Z

    move-result v32

    if-eqz v32, :cond_0

    if-nez v6, :cond_0

    :cond_7
    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v32, 0x0

    sput v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bExecutingEvent:Z

    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] CONNECTED with this slot : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v32

    if-eqz v32, :cond_0

    const/16 v28, -0x1

    const/4 v6, 0x0

    if-nez v27, :cond_b

    const/16 v28, 0x1

    :cond_9
    :goto_1
    invoke-static/range {v27 .. v27}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v6

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] mFlagSim = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", activeUsingNetworkWithSimSlot = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mFlagSim:I

    const/16 v33, 0x1

    shl-int v33, v33, v28

    and-int v32, v32, v33

    if-eqz v32, :cond_0

    if-nez v6, :cond_0

    const-string v32, "persist.sys.dataprefer.simid"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string v32, "ril.datacross.simid"

    const/16 v33, -0x1

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[TransactionService] crossSimSlot = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mDataNetwork = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_a

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v32

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const-string v32, "Mms:transaction"

    const-string v33, "[MmsSystemEventReceiver] MmsApp.getApplication().mDataSwitchDialog = true"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v32, 0x0

    sput v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bExecutingEvent:Z

    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] if has registered slot, start transaction with this slot : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v32, 0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const/16 v28, 0x0

    goto/16 :goto_1

    :cond_c
    const-string v32, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    const-string v32, "Mms:transaction"

    const-string v33, "[MmsSystemEventReceiver] ACTION_TETHER_STATE_CHANGED"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v32, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v32, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    const/16 v31, 0x0

    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mUsbRegexs:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_f

    aget-object v22, v7, v15

    move-object/from16 v25, v22

    check-cast v25, Ljava/lang/String;

    sget-object v8, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mUsbRegexs:[Ljava/lang/String;

    array-length v0, v8

    move/from16 v18, v0

    const/4 v14, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    aget-object v23, v8, v14

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    const/16 v31, 0x1

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_e
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_2

    :cond_f
    invoke-static/range {v31 .. v31}, Lcom/android/mms/MmsConfig;->setTetheringMode(Z)V

    goto/16 :goto_0

    :cond_10
    const-string v32, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->restorePduNotificationStatus(Landroid/content/Context;)V

    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->BootCompleted:Z

    const-string v32, "ro.csc.sales_code"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_12

    const-string v32, "INU"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_11

    const-string v32, "INS"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_11

    const-string v32, "TML"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    :cond_11
    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->SMSCCompleted:Z

    if-eqz v32, :cond_12

    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    if-nez v32, :cond_12

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    :cond_12
    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedSelloutSmsService:Z

    if-nez v32, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSSMS()Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-virtual/range {p0 .. p2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startSelloutSms(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedSelloutSmsService:Z

    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/ReservationManager;->resetAfterConnected()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPDP_PARAM(Landroid/content/Context;Z)V

    const-string v32, "Mms:transaction"

    const-string v33, "Set true Booted"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoSmsSending()Z

    move-result v32

    if-eqz v32, :cond_15

    const-string v32, "ril.noti_sim_iccid"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "The card is iccId  = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v32, "Enabled"

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    if-eqz v16, :cond_15

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/mms/oem/AutoSms;->init(Landroid/content/Context;Z)V

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v32

    if-eqz v32, :cond_16

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Lcom/android/mms/rcs/transaction/FtRetryAlarmReceiver;->setIsFromBootAction(Z)V

    :cond_16
    const-class v32, Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v32, "result"

    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v33

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static/range {p1 .. p2}, Lcom/android/mms/transaction/SmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_17
    const-string v32, "android.provider.Telephony.GET_SMSC"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->SMSCCompleted:Z

    const-string v32, "ro.csc.sales_code"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    const-string v32, "INU"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_18

    const-string v32, "INS"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_18

    const-string v32, "TML"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    :cond_18
    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    if-nez v32, :cond_0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    goto/16 :goto_0

    :cond_19
    const-string v32, "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    const-string v32, "ro.csc.sales_code"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    const-string v32, "INU"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1a

    const-string v32, "INS"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1a

    const-string v32, "TML"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    :cond_1a
    const/16 v32, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_1b
    const-string v32, "com.android.mms.transaction.NO_SVC_RETRY_ACTION"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_20

    const-string v32, "simSlot"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    sget v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcRetryCount:I

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasRetrieveTransaction(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_1c

    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isAutoRetrieve(I)Z

    move-result v32

    if-eqz v32, :cond_0

    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    sget-object v33, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    const/16 v34, 0x2

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcRetryCount:I

    add-int/lit8 v32, v32, 0x1

    sput v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcRetryCount:I

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onReceive - NO_SVC_RETRY_ACTION, sNoSvcRetryCount = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcRetryCount:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManager(Landroid/content/Context;)V

    const-string v32, "Mms:transaction"

    const-string v33, "onReceive - NO_SVC_RETRY_ACTION - cancelAlarmManager()"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->initNoSvcValue()V

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sget-wide v34, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sNoSvcStartTime:J

    sub-long v12, v32, v34

    const-wide/32 v32, 0xdbba0

    cmp-long v32, v12, v32

    if-lez v32, :cond_1f

    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManager(Landroid/content/Context;)V

    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsRegNoSvcAlarm:Z

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsCompleteNoSvcRetry:Z

    :cond_1f
    const-string v32, "Mms:transaction"

    const-string v33, "onReceive - NO_SVC_RETRY_ACTION, cancelAlarmManager() - 3rd try finished"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    const-string v32, "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_24

    const-string v32, "simSlot"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v32

    if-eqz v32, :cond_23

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v32

    if-nez v32, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v32

    if-eqz v32, :cond_23

    :cond_21
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getFinalTryDataSwitchSlot()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z

    const/16 v32, 0x0

    sput v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sAttemptRetryCountDataSwitch:I

    const/16 v32, -0x1

    invoke-static/range {v32 .. v32}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setFinalTryDataSwitchSlot(I)V

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManagerForDataSwitch(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unregisterCallstateListener()V

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/mms/util/TelephonyDBUtils;->getPendingMmsCount(Landroid/content/Context;I)I

    move-result v32

    if-lez v32, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v32

    if-eqz v32, :cond_22

    const-string v32, "Mms:transaction"

    const-string v33, "[MmsSystemEventReceiver] call wakeUpService for pending mms"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;IZ)V

    :cond_22
    const-string v32, "Mms:transaction"

    const-string v33, "[MmsSystemEventReceiver] ACTION_DATA_CONNECTION_CHANGE_SUCCESS - EVENT_WAKE_UP_SERVICE"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_23
    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] onReceive - ACTION_DATA_CONNECTION_CHANGE_SUCCESS simSlot = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", TransactionService.mSwitching = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-boolean v34, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", sFinalTryDataSwitchSlot = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sFinalTryDataSwitchSlot:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    const-string v32, "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_28

    const-string v32, "simSlot"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v32

    if-eqz v32, :cond_26

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v32

    if-nez v32, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v32

    if-eqz v32, :cond_26

    :cond_25
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getFinalTryDataSwitchSlot()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v27

    if-ne v0, v1, :cond_26

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] TelephonyUtils.isOnCall() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v32

    if-eqz v32, :cond_27

    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManagerForDataSwitch(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerCallStateListener()V

    :cond_26
    :goto_4
    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] onReceive - ACTION_DATA_CONNECTION_CHANGE_FAIL simSlot = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", TransactionService.mSwitching = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-boolean v34, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", sFinalTryDataSwitchSlot = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sFinalTryDataSwitchSlot:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setAlarmManagerForDataSwitch(Landroid/content/Context;I)V

    goto :goto_4

    :cond_28
    const-string v32, "com.android.mms.transaction.DATA_SWITCH_RETRY_ACTION"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a

    const-string v32, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[MmsSystemEventReceiver] onReceive - DATA_SWITCH_RETRY_ACTION sAttemptRetryCountDataSwitch = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sAttemptRetryCountDataSwitch:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z

    if-eqz v32, :cond_0

    const-string v32, "simSlot"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    sget v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sAttemptRetryCountDataSwitch:I

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_29

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->callSwitchDataNetworkForMMS(I)V

    sget v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sAttemptRetryCountDataSwitch:I

    add-int/lit8 v32, v32, 0x1

    sput v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sAttemptRetryCountDataSwitch:I

    goto/16 :goto_0

    :cond_29
    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManagerForDataSwitch(Landroid/content/Context;)V

    const/16 v32, 0x0

    sput v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sAttemptRetryCountDataSwitch:I

    goto/16 :goto_0

    :cond_2a
    const-string v32, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2c

    const-string v32, "ro.csc.sales_code"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    const-string v32, "INU"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_2b

    const-string v32, "INS"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_2b

    const-string v32, "TML"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    :cond_2b
    const-string v32, "ITS"

    const-string v33, "[MmsSystemEventReceiver] Intent ::DEFAULT_CS_SIM_CHANGED"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v32, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_2c
    const-string v32, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    sget-object v32, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 12

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

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isTestSimCard(Landroid/content/Context;)Z

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

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getSsmsInfo(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "Mms:transaction"

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

    const-string v3, "Mms:transaction"

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

    invoke-static {p1, p2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
