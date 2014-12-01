.class public Lcom/android/mms/rcs/transaction/ImTransactionService;
.super Landroid/app/Service;
.source "ImTransactionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final CHAT:Ljava/lang/String; = "chat"

.field private static final EVENT_CHAT_ID_REQUEST:I = 0x1

.field private static final EVENT_CHAT_MESSAGE_RECEIVED:I = 0xd

.field private static final EVENT_CHAT_MESSAGE_SENT:I = 0x3

.field private static final EVENT_CHECK_RUN_TRANSACTION:I = 0x5

.field private static final EVENT_FT_ACCEPT_DOWNLOAD:I = 0x11

.field private static final EVENT_FT_ATTACHED:I = 0x7

.field private static final EVENT_FT_CANCELED:I = 0x8

.field private static final EVENT_FT_COMPLETE:I = 0xa

.field private static final EVENT_FT_INIT_RECEIVING:I = 0xf

.field private static final EVENT_FT_INTERRUPTED:I = 0xc

.field private static final EVENT_FT_IN_PROGRESS:I = 0x10

.field private static final EVENT_FT_PROGRESS:I = 0x9

.field private static final EVENT_FT_REQUEST_FAIL:I = 0xb

.field private static final EVENT_LOOP_EXIT:I = 0x6

.field private static final EVENT_RUN_PENDING:I = 0xe

.field private static final EVENT_SENDING_RCS:I = 0x2

.field private static final EVENT_TRANSACTION_DONE:I = 0x4

.field public static final EXTRA_ACCEPT_DOWNLOAD:Ljava/lang/String; = "acceptDownload"

.field public static final FT:Ljava/lang/String; = "ft"

.field public static final ON_FT_ATTACHED:Ljava/lang/String; = "on-ft-attached"

.field public static final ON_FT_CANCELED:Ljava/lang/String; = "on-ft-canceled"

.field public static final ON_FT_COMPLETE:Ljava/lang/String; = "on-ft-complete"

.field public static final ON_FT_INTERRUPTED:Ljava/lang/String; = "on-ft-interrupted"

.field public static final ON_FT_PROGRESS:Ljava/lang/String; = "on-ft-progress"

.field public static final ON_FT_REQUEST_FAIL:Ljava/lang/String; = "on-ft-request-fail"

.field public static final ON_MESSAGE_RECEIVED:Ljava/lang/String; = "on-message-received"

.field public static final ON_MESSAGE_SENT:Ljava/lang/String; = "on-message-sent"

.field public static final ON_MESSAGE_SENT_UPDATE:Ljava/lang/String; = "on-message-sent-update"

.field public static final START_IM_PENDING_SERVICE:Ljava/lang/String; = "start-im-pending-service"

.field public static final START_IM_RECEIVING_SERVICE:Ljava/lang/String; = "start-im-receiving-service"

.field public static final START_IM_SENDING_SERVICE:Ljava/lang/String; = "start-im-sending-service"

.field public static final START_TRANSACTION_DONE:Ljava/lang/String; = "im-transaction-done"

.field private static final TAG:Ljava/lang/String; = "Mms/ImTransactionService"

.field private static final TRANSACTION_RUN_TIME_WAIT:I = 0x7530


# instance fields
.field private final mProcessingTransaction:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/rcs/transaction/ImBaseTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/rcs/transaction/ImTransactionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/ImTransactionService;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/rcs/transaction/ImTransactionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/ImTransactionService;->stopSelfIfIdle(I)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    const-string v0, "Mms/ImTransactionService"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "Mms/ImTransactionService"

    const-string v2, "create wakelock"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private releaseWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ImTransactionService"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private runningPendingTransaction(ILcom/android/mms/rcs/transaction/ImBaseBundle;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getServiceType()I

    move-result v1

    const-string v2, "Mms/ImTransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runningPendingTransaction(int, ImBaseBundle) : serviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "start-im-sending-service"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v1, v5, :cond_0

    const-string v2, "chat"

    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getChatId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    const-string v2, "Mms/ImTransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchTransaction: sending message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "ft"

    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getChatId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v2, "start-im-receiving-service"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne v1, v5, :cond_0

    const-string v2, "ft"

    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_7

    if-eqz p4, :cond_6

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    if-ne v1, v5, :cond_0

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private stopSelfIfIdle(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v1, "Mms/ImTransactionService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImTransactionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;-><init>(Lcom/android/mms/rcs/transaction/ImTransactionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Mms/ImTransactionService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms/ImTransactionService"

    const-string v1, "TransactionService exiting with pending transaction"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/ImTransactionService;->releaseWakeLock()V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 22

    if-nez p1, :cond_0

    const/4 v3, 0x2

    :goto_0
    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    const-string v3, "Mms/ImTransactionService"

    const-string v4, "action is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/rcs/transaction/ImTransactionService;->stopSelfIfIdle(I)V

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "action = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "start-im-sending-service"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "start-im-pending-service"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "start-im-receiving-service"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    const/4 v15, 0x6

    const/4 v13, 0x0

    const-string v3, "start-im-pending-service"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v15, 0x0

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/android/mms/rcs/RcsQuery;->getCursorPendingRcsMessage(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_a

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v16

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onStartCommand : cursor.count="

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v16, :cond_5

    const-string v3, "Mms/ImTransactionService"

    const-string v4, " onStartCommand: no pending messages. Stopping service."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/rcs/transaction/ImTransactionService;->stopSelfIfIdle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    const-string v3, "start-im-receiving-service"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v15, 0x1

    const-string v3, "acceptDownload"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/rcs/transaction/ImTransactionService;->createWakeLock()V

    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v19, 0x0

    const-string v3, "transport_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "recipients"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "service_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v3, "chat"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const-string v3, "session_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string v3, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v3, "status"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "thread_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    new-instance v2, Lcom/android/mms/rcs/transaction/ImBaseBundle;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v12}, Lcom/android/mms/rcs/transaction/ImBaseBundle;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2, v14, v13}, Lcom/android/mms/rcs/transaction/ImTransactionService;->runningPendingTransaction(ILcom/android/mms/rcs/transaction/ImBaseBundle;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_6
    :try_start_2
    const-string v3, "ft"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const-string v3, "chat_session_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "no valid transport type id = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v20, "_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_4
    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_a
    const-string v3, "Mms/ImTransactionService"

    const-string v4, "cursor is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/rcs/transaction/ImTransactionService;->stopSelfIfIdle(I)V

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_b
    const-string v3, "im-transaction-done"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "chatSendingDone: sending message "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_c
    const-string v3, "on-message-sent"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "on-message-sent-update"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onMessageSent&Update : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_e
    const-string v3, "on-ft-attached"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ON_FT_ATTACHED : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_f
    const-string v3, "on-ft-canceled"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ON_FT_CANCELED : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_10
    const-string v3, "on-ft-progress"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ON_FT_PROGRESS : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_11
    const-string v3, "on-ft-complete"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ON_FT_COMPLETE : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_12
    const-string v3, "on-ft-request-fail"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ON_FT_REQUEST_FAIL : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_13
    const-string v3, "on-ft-interrupted"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ON_FT_INTERRUPTED : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_14
    const-string v3, "on-message-received"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms/ImTransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ON_MESSAGE_RECEIVED : msg = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4
.end method
