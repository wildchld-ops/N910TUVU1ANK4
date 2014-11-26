.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ACKALARM:Ljava/lang/String; = "android.intent.action.ACTION_ACKALARM"

.field public static final ACTION_ENABLE_AUTO_RETRIEVE:Ljava/lang/String; = "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

.field private static final ACTION_NETFLAG_RESET:Ljava/lang/String; = "com.android.mms.intent.action.NETFLAG_RESET"

.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field public static final ACTION_SPAMALARM:Ljava/lang/String; = "android.intent.action.ACTION_SPAMALARM"

.field private static final APN_EXTENSION_WAIT:I = 0x7530

.field private static final CONNECTIVITY_START_TIMEOUT:I = 0x7530

.field private static final DELAY_AFTER_SWITCHED_NETWORK_AVAILABLE:I = 0x3e8

.field private static final DELAY_TO_SEND_PENDING_TRANSACTION_TIME:I = 0x1f4

.field private static final DURATION_WAIT_DATA_NETWORK_TO_SWTICH:I = 0xea60

.field private static final EVENT_APN_CHANGE_WAITING_TIME_OUT:I = 0x8

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x3

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x2

.field private static final EVENT_DELAY_TO_HANDLE_PENDING_TRANSACTION:I = 0x7

.field private static final EVENT_HANDLE_NEXT_CHECKING_TRANSACTION:I = 0x5

.field private static final EVENT_HANDLE_NEXT_PENDING_TRANSACTION:I = 0x4

.field private static final EVENT_MMS_CONNECTIVITY_START_CHECK:I = 0x6

.field private static final EVENT_QUIT:I = 0x64

.field private static final EVENT_TRANSACTION_REQUEST:I = 0x1

.field private static final MAX_DATA_CONNECTION_WAIT_COUNT:I = 0x3

.field private static final MMS_PROCESSING_MAX_COUNT:I = 0xa

.field private static final MMS_RETRY_APN_EXTENSION_MAX_COUNT:I = 0xa

.field private static final MSG_SWITCHED_NETWORK_CHECK:I = 0x1

.field private static final MSG_WAITING_NETWORK_SWITCH_TIME_OUT:I = 0x2

.field private static final NETWORK_AVAILABLE:I = 0x1

.field private static final NETWORK_NOT_AVAILABLE:I = 0x0

.field private static final RETRY_WAIT:I = 0x2710

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TOAST_DOWNLOAD_LATER:I = 0x2

.field private static final TOAST_MSG_QUEUED:I = 0x1

.field private static final TOAST_NONE:I = -0x1

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"

.field private static final WAIT_START_USING_NETWORK:I = 0x1388

.field private static mRetryCountForApnExtension:I

.field protected static mSwitching:Z

.field private static sLastServiceId:I


# instance fields
.field protected DEFAULT_MULTISIM_SLOT:I

.field protected DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

.field protected DEFAULT_NETWORK_INFO:I

.field protected DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

.field protected DEFAULT_RECEIVER_CLASS_NAME:Ljava/lang/String;

.field protected DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field private flagsPending:I

.field private intentPending:Landroid/content/Intent;

.field private mApnChanged:Z

.field private mConnMgr:Landroid/net/MultiSimConnectivityManager;

.field private mDataStateChanged:Z

.field private mInsertedSimNum:I

.field private mOriginAPN:I

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

.field private mSavedFlags:I

.field private mSavedIntent:Landroid/content/Intent;

.field private mSavedStartId:I

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field protected mSwitchedHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;

.field public mToastHandler:Landroid/os/Handler;

.field private mToastType:I

.field private mUsingNetworkFeatureRequested:Z

.field private mUsingNetworkFeatureRequestedSimSlot:I

.field private mWaitingMobileMmsConnected:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private noServiceNeedtoSend:Z

.field private retry_count:Ljava/lang/Integer;

.field private startIdPending:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I

    sput v0, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mDataStateChanged:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequestedSimSlot:I

    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    new-instance v0, Lcom/android/mms/transaction/TransactionService$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$2;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    const-string v0, "Mms:transaction"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO:I

    const-string v0, "enableMMS"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

    const-string v0, "mobile_mms"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    const-string v0, "TransactionService"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    const-string v0, "MmsSystemEventReceiver"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_RECEIVER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/TransactionService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I

    return p0
.end method

.method static synthetic access$1208()I
    .locals 2

    sget v0, Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/TransactionService;I)Z
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->needEnableDataConnection(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mDataStateChanged:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isDataEnabledInSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mSavedFlags:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mSavedStartId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;IIZ)I
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/TransactionService;)Landroid/net/MultiSimConnectivityManager;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/TransactionService;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

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

.method private getTransactionType(I)I
    .locals 3
    .param p1    # I

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService] Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isDataEnabledInSettings()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MultiSimConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsMobiledataOff()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v1, "[TransactionService] Mobile Data is disabled in Settings"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 1
    .param p0    # I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 22
    .param p1    # I
    .param p2    # Lcom/android/mms/transaction/TransactionBundle;
    .param p3    # Z

    const-string v4, "persist.sys.dataprefer.simid"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getSimSlot()I

    move-result v21

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p3, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    move/from16 v0, v21

    if-ne v13, v0, :cond_11

    :cond_1
    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_8

    invoke-static/range {v21 .. v21}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    const/4 v10, 0x1

    :goto_0
    const/4 v9, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v20

    const/4 v4, 0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_3

    const/4 v4, 0x2

    move/from16 v0, v20

    if-eq v0, v4, :cond_3

    if-nez v20, :cond_5

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    :cond_4
    const/4 v9, 0x1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v14

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TransactionService] launchTransaction: dataSuspended : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", callIn2g : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " simSlot = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LGU+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getDataNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "launchTransaction: !getDataNetworkEnabled"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x82

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :goto_2
    return-void

    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    const/4 v10, 0x1

    :goto_3
    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v11}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v12

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_c

    if-nez v10, :cond_c

    if-eqz v9, :cond_d

    :cond_c
    if-nez v14, :cond_d

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TransactionService] mark error type to ERROR_TYPE_GENERIC simSlot = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v6, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v6, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "err_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TransactionService] launchTransaction: no network error! simSlot = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(III)V

    const/4 v4, 0x1

    if-ne v14, v4, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v4, 0x80

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move/from16 v0, p1

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_13

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput v4, v0, Landroid/os/Message;->arg2:I

    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TransactionService] launchTransaction: sending message "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " simSlot = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_13
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Landroid/os/Message;->arg2:I

    goto :goto_4
.end method

.method private needEnableDataConnection(I)Z
    .locals 6
    .param p1    # I

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/mms/util/TelephonyUtils;->getMobileDataEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableForceConnectMms()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getCurrentApn(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/mms/util/TelephonyUtils;->getApnName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CTNET"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "TransactionService"

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "no need enable the data service if CTNET"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onNetworkUnavailable(I)V
    .locals 2
    .param p1    # I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private onNetworkUnavailable(III)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] onNetworkUnavailable: sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkUnavailable : retry_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v3

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    if-ne p2, v5, :cond_7

    iput v7, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    if-nez v2, :cond_1

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0

    :cond_7
    if-ne p2, v7, :cond_3

    iput v5, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    if-nez p3, :cond_9

    const/4 v1, 0x1

    :cond_9
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] onNetworkUnavailable oppositeSimSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    if-le v2, v5, :cond_a

    invoke-static {v1}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] onNetworkUnavailable do not call stopSelf, oppositeSimSlot is working serviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0
.end method

.method private processSendRetriveAck(Landroid/net/Uri;ZI)V
    .locals 15
    .param p1    # Landroid/net/Uri;
    .param p2    # Z
    .param p3    # I

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSendRetriveAck(),uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isSpam="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msgType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "tr_id"

    aput-object v8, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v3, v2

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-nez p3, :cond_1

    const-string v6, "noticationtransaction"

    :goto_0
    new-instance v1, Lcom/android/mms/transaction/RetrieveAckTimer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    new-instance v13, Ljava/lang/Thread;

    invoke-direct {v13, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    :goto_1
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    const-string v6, "retrievetransaction"

    goto :goto_0

    :cond_2
    move-object v5, v14

    move-wide v3, v10

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private renewMmsConnectivity(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    goto :goto_0
.end method

.method private startCommand(Landroid/content/Intent;IIZ)I
    .locals 49
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    new-instance v29, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move/from16 v42, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/transaction/TransactionBundle;->getSimSlot()I

    move-result v42

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->needApnChange()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v42, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    invoke-static {v4, v5}, Lcom/android/mms/util/TelephonyUtils;->checkPreferredApn(Landroid/content/Context;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] [apnChange] Do Change APN to CTWAP!!!!! Save mCurrentApn = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    invoke-static {v8, v9}, Lcom/android/mms/util/TelephonyUtils;->getApnName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->needEnableDataConnection(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v42

    invoke-static {v4, v5, v0}, Lcom/android/mms/util/TelephonyUtils;->setMobileDataEnabled(Landroid/content/Context;ZI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "[dataStateChanged] change mobile data enable!!!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->mDataStateChanged:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService]     : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " intent="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService]     networkAvailable="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p4, :cond_5

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] getTransactionType="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " simSlot="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_6

    const-string v4, "com.android.mms.intent.action.NETFLAG_RESET"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "[TransactionService] reset mUsingNetworkFeatureRequested flag"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    :goto_1
    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_6
    const-string v4, "persist.sys.dataprefer.simid"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v39

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "android.intent.action.ACTION_ACKALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "MsgType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "MsgId"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    const-string v4, "TansId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "retryAckCnt"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v4, "isSpam"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ retryAckCnt : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  isSpam : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v45, 0x0

    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_e

    const/4 v6, 0x0

    if-eqz v15, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://spammms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/spampart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v41

    if-eqz v41, :cond_b

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v41, :cond_7

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v4, "noticationtransaction"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "retrievetransaction"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_8
    new-instance v13, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v13, v4, v5}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**start transaction process~ : messageId : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Thread : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "connectivity Result :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    move/from16 v0, v33

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "**start transaction process~ : APN_REQUEST_FAILED "

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v7, v45

    :goto_3
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_2

    :cond_a
    new-instance v7, Lcom/android/mms/transaction/RetrieveAckTransaction;

    move-object/from16 v8, p0

    move/from16 v9, p3

    move-wide/from16 v10, v19

    invoke-direct/range {v7 .. v16}, Lcom/android/mms/transaction/RetrieveAckTransaction;-><init>(Landroid/content/Context;IJLjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;ZI)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual {v7}, Lcom/android/mms/transaction/RetrieveAckTransaction;->process()V

    goto :goto_3

    :cond_b
    if-eqz v41, :cond_c

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    :cond_c
    new-instance v17, Lcom/android/mms/transaction/RetrieveAckTimer;

    const/16 v25, 0x5

    move-object/from16 v18, p0

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v16

    invoke-direct/range {v17 .. v25}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    new-instance v44, Ljava/lang/Thread;

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "@@ Cursor null or Part null @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    move-object/from16 v7, v45

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "@@ ack retry perment fail @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string v4, "android.intent.action.ACTION_SPAMALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "[SpamReport] : ACTION_SPAMALARM recieved"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const-string v4, "MsgId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v4, "SpamId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v4, "TansId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "retrySpamReportCnt"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ retrySpamReportCnt : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    move/from16 v0, v27

    if-ge v0, v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->createTransactionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v33

    const/4 v4, 0x3

    move/from16 v0, v33

    if-ne v0, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "**start transaction process~ : APN_REQUEST_FAILED "

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const v5, 0x7f0c04cf

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    :goto_5
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_10
    move-object/from16 v21, p0

    move/from16 v22, p3

    move-object/from16 v24, v12

    move-object/from16 v26, v13

    invoke-virtual/range {v21 .. v27}, Lcom/android/mms/transaction/TransactionService;->createSpamReportTransactionAndAttach(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;I)Lcom/android/mms/transaction/SpamReportTransaction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/transaction/SpamReportTransaction;->process()V

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "@@ SpamReport fail @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const v5, 0x7f0c04cf

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    goto :goto_5

    :cond_12
    const-string v4, "android.intent.action.ACTION_ONALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2d

    :cond_13
    const/16 v36, 0x0

    const/16 v35, -0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "ril.datacross.simid"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v35

    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, v42

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;

    move-result-object v36

    :goto_6
    if-eqz v36, :cond_2a

    :try_start_2
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: cursor.count="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v34, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: no pending messages. Stopping service. simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;I)V

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyProcessingTransactionWithSimSlot(I)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyPendingTransactionWithSimSlot(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->restoreSwitchedDataNetwork(I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_7
    const/4 v4, 0x2

    :goto_8
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_15
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v36

    goto/16 :goto_6

    :cond_16
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v4

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_17
    :try_start_4
    const-string v4, "msg_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v4, "msg_type"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    if-eqz p4, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    if-eqz p4, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "TransactionService"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_19

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_1d

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: registerForConnectionStateChanges simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToLast()Z

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v46

    move/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(III)V

    const/4 v4, 0x2

    goto/16 :goto_8

    :pswitch_0
    const-string v4, "err_type"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] failureType : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "[TransactionService] MmsSms.NO_ERROR : 0"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] !isTransientFailure(failureType) : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v37 .. v37}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    :goto_9
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v37, :cond_1a

    const-string v4, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    :cond_1a
    invoke-static/range {v37 .. v37}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] State change to unstart. simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v48

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v48

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v4

    if-nez v4, :cond_24

    :cond_1d
    :goto_a
    :pswitch_1
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] transactionType : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_1e
    if-eqz p4, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "TransactionService"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1f

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v46

    move/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(III)V

    const/4 v4, 0x2

    goto/16 :goto_8

    :cond_20
    packed-switch v46, :pswitch_data_0

    :cond_21
    :goto_b
    :pswitch_2
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v48

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x2

    move/from16 v0, v46

    if-ne v0, v4, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_22
    :goto_c
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/mms/transaction/Transaction;

    invoke-virtual/range {v44 .. v44}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v47

    if-eqz v47, :cond_27

    invoke-virtual/range {v48 .. v48}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v47 .. v47}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v8, "current pocessing retry cancel : duplicated process"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v4

    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_24
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v5, "[TransactionService] autoRetrieve isAuto is true. do not break"

    move/from16 v0, v42

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_b

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] crossSimSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", cursor.isLast() = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->isLast()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v42

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->isLast()Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_26

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->restoreSwitchedDataNetwork(I)V

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_a

    :cond_27
    :try_start_7
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v4, :cond_22

    invoke-virtual/range {v48 .. v48}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v8, "current pocessing retry cancel : duplicated process"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_28
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_29
    :try_start_8
    new-instance v30, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v48 .. v48}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    move/from16 v1, v46

    move/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v30

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_a

    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: no pending messages. Stopping service. simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;I)V

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyProcessingTransactionWithSimSlot(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyPendingTransactionWithSimSlot(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    :cond_2b
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->restoreSwitchedDataNetwork(I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(II)V

    :goto_d
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_2c
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto :goto_d

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: launch transaction... simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_2e
    if-eqz p4, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2f

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: registerForConnectionStateChanges simSlot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V

    :cond_30
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v29

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto :goto_d

    :cond_31
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private stopSelfIfIdle(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(II)V

    return-void
.end method

.method private stopSelfIfIdle(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v3, "[TransactionService] stopSelfIfIdle: STOP!"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v3, "[TransactionService] stopSelfIfIdle: unRegisterForConnectionStateChanges"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] stopSelfIfIdle oppositeSimSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] stopSelfIfIdle do not call stopSelf, oppositeSimSlot is working startId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized updateThreadSnippet(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 18
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;

    const-class v17, Lcom/android/mms/transaction/TransactionService;

    monitor-enter v17

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/4 v1, 0x3

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "\'sms\' as type"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC "

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v1, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService] latest msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Received msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v11, :cond_1

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long v1, v12, v14

    if-nez v1, :cond_2

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "group_snippet"

    move-object/from16 v0, p3

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v1, Lcom/android/mms/util/DummyFramework$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v17

    return-void

    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v17

    throw v1
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity(I)I

    move-result v0

    return v0
.end method

.method protected beginMmsConnectivity(I)I
    .locals 18
    .param p1    # I

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[TransactionService] isEpdgActivated = true, isImsRegisteredOverWifi = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v12

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[TransactionService] beginMmsConnectivity: result="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " simSlot = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v12, :pswitch_data_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[TransactionService] StartUsingNetworkFeature Error! simSlot = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v14, "persist.sys.dataprefer.simid"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[TransactionService] extraInfo = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", networkInfo.isConnected() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", preferreSimId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "CTWAP"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "ctwap"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->needApnChange()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-nez v14, :cond_4

    if-nez v11, :cond_4

    if-nez p1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/mms/util/TelephonyUtils;->getMobileDataEnabled(Landroid/content/Context;I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v15, "[TransactionService] do not call mConnMgr.startUsingNetworkFeature"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v15, "[TransactionService] result = PhoneConstants.APN_REQUEST_STARTED"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->createTransactionIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v14, "com.android.mms.intent.action.NETFLAG_RESET"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "sim-slot"

    move/from16 v0, p1

    invoke-virtual {v3, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const-string v14, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const-wide/16 v8, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0x3a980

    add-long v8, v14, v16

    :goto_2
    const/4 v14, 0x3

    invoke-virtual {v1, v14, v8, v9, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    add-long v8, v14, v16

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[TransactionService] beginMmsConnectivity: skip sTartUsingNetworkFeature() because it is already requested, mWaitingMobileMmsConnected : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " simSlot = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    if-eqz v14, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v14}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v14

    if-eqz v14, :cond_8

    if-nez p1, :cond_8

    const-string v14, "TransactionService"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v15, "[TransactionService] call mConnMgr.startUsingNetworkFeature"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v12

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    :pswitch_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto/16 :goto_1

    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createRetryIntent()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONALARM"

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected createServiceHandler(Landroid/os/Looper;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1
    .param p1    # Landroid/os/Looper;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;Lcom/android/mms/transaction/Observer;)V

    return-object v0
.end method

.method protected createSpamReportTransactionAndAttach(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;I)Lcom/android/mms/transaction/SpamReportTransaction;
    .locals 8
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/android/mms/transaction/TransactionSettings;
    .param p6    # I

    new-instance v0, Lcom/android/mms/transaction/SpamReportTransaction;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SpamReportTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;I)V

    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    return-object v0
.end method

.method protected createTransactionIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected createTransactionSettings()Lcom/android/mms/transaction/TransactionSettings;
    .locals 2

    new-instance v0, Lcom/android/mms/transaction/TransactionSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected endMmsConnectivity()V
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V

    return-void
.end method

.method protected endMmsConnectivity(I)V
    .locals 3
    .param p1    # I

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v1, "[TransactionService] endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCheckOtherSimSlotTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->isEmptyProcessingTransactionWithSimSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService] endMmsConnectivity setActiveUsingNetworkFeature false simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/mms/util/DownloadManager;->setActiveUsingNetworkFeature(ZI)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->restoreSwitchedDataNetwork(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method protected endMmsConnectivity(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v1, "[TransactionService] endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v1, "##### Don\'t StopUsingNetworkFeature endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/TransactionService;->restoreSwitchedDataNetwork(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method protected isEmptyPendingTransactionWithSimSlot(I)Z
    .locals 6
    .param p1    # I

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPending.isEmpty() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v0, 0x0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emptyPendingTransaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    goto :goto_0
.end method

.method protected isEmptyProcessingTransactionWithSimSlot(I)Z
    .locals 6
    .param p1    # I

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProcessing.isEmpty() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v0, 0x0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emptyProcessingTransaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    goto :goto_0
.end method

.method protected needApnChange()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needApnchange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] Creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->createServiceHandler(Landroid/os/Looper;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    new-instance v2, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.intent.action.SET_PREFERRED_DATA_SLOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRestrictApnExtension()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    sput v2, Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I

    :cond_2
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService] Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exiting with transaction still pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRestrictApnExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    sput v4, Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->needApnChange()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    invoke-static {v0, v1}, Lcom/android/mms/util/TelephonyUtils;->changeApn(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService] [apnRestore] Do Restore APN to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    invoke-static {v2, v3}, Lcom/android/mms/util/TelephonyUtils;->getApnName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    iput-boolean v4, p0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableForceConnectMms()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mDataStateChanged:Z

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v0, v4, v1}, Lcom/android/mms/util/TelephonyUtils;->setMobileDataEnabled(Landroid/content/Context;ZI)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v1, "[dataStateChanged] change mobile data disable!!!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/mms/transaction/TransactionService;->mDataStateChanged:Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCheckOtherSimSlotTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    if-le v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v1, "[TransactionService] onDestroy setActiveUsingNetworkFeature false both simSlot"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v4}, Lcom/android/mms/util/DownloadManager;->setActiveUsingNetworkFeature(ZI)V

    invoke-static {v4, v5}, Lcom/android/mms/util/DownloadManager;->setActiveUsingNetworkFeature(ZI)V

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 21
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_0

    const/16 v18, 0x2

    :goto_0
    return v18

    :cond_0
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/MultiSimConnectivityManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v18

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] onStartCommand: #"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move/from16 v16, v0

    const-string v18, "ril.datacross.simid"

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getSimSlot()I

    move-result v16

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getDataSwitchSuccess()Z

    move-result v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] onStartCommand action : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " simSlot: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isDataSwitchSuccess "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v18

    if-eqz v18, :cond_2

    sput p3, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    :cond_2
    if-eqz v4, :cond_7

    const-string v18, "com.android.mms.intent.action.NETFLAG_RESET"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] reset mUsingNetworkFeatureRequested flag simSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyProcessingTransactionWithSimSlot(I)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyPendingTransactionWithSimSlot(I)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] stopSelf, processing & pending empty startId #"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    if-nez v16, :cond_3

    const/4 v15, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] onStartCommand oppositeSimSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    invoke-static {v15}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] onStartCommand do not call stopSelf, oppositeSimSlot is working startId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/16 v18, 0x2

    goto/16 :goto_0

    :cond_5
    move/from16 v0, v16

    if-ne v7, v0, :cond_6

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->restoreSwitchedDataNetwork(I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/Transaction;->isNetworkAvailable(Landroid/net/ConnectivityManager;I)Z

    move-result v18

    if-nez v18, :cond_9

    const/4 v14, 0x1

    :goto_2
    const-string v18, "persist.sys.dataprefer.simid"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v9, v0, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    move/from16 v0, v16

    if-eq v0, v10, :cond_a

    sget-object v18, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataConnectionWaitCount:[I

    aget v18, v18, v16

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    sget-object v18, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataConnectionWaitCount:[I

    const/16 v19, 0x0

    aput v19, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v0, v16

    iput v0, v13, Landroid/os/Message;->arg1:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v18, 0x2

    goto/16 :goto_0

    :cond_9
    const/4 v14, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] noNetwork: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mDatanetwork: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mDataDialog: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v18

    if-nez v18, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v18

    const/16 v19, 0x81

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCheckOtherSimSlotTransaction()Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    if-nez v16, :cond_11

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[TransactionService] noNetwork change to true case : Slot2 is occupied"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v18

    goto/16 :goto_0

    :cond_c
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService]  Slot2 is NOT OCCUPIED  simSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/mms/util/DownloadManager;->setActiveUsingNetworkFeature(ZI)V

    move/from16 v0, v16

    if-eq v10, v0, :cond_10

    const/4 v9, 0x1

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService]  mDataNetwork =  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mDataDialog = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mSwitching = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v18

    if-nez v18, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-eqz v18, :cond_f

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v18

    if-eqz v18, :cond_14

    move/from16 v0, v16

    if-ne v10, v0, :cond_14

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] no need to switch data network in this case, call startCommand() simSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v18

    goto/16 :goto_0

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v18

    if-eqz v18, :cond_12

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[TransactionService] noNetwork change to true case : Slot1 is occupied"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v18

    goto/16 :goto_0

    :cond_12
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/DownloadManager;->getActiveUsingNetworkFeature(I)Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService]  Slot1 is NOT OCCUPIED  simSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/mms/util/DownloadManager;->setActiveUsingNetworkFeature(ZI)V

    move/from16 v0, v16

    if-eq v10, v0, :cond_13

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_14
    const-string v18, "TransactionService"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-eqz v18, :cond_15

    if-eqz v8, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] call beginMmsConnectivity() simSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity(I)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v18

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1b

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_1b

    sget-boolean v18, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    if-nez v18, :cond_1b

    move/from16 v0, v16

    if-eq v10, v0, :cond_1b

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-nez v18, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v18

    if-eqz v18, :cond_1b

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[TransactionService] noNetwork change to true isAirplaneModeOn is true"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v18

    goto/16 :goto_0

    :cond_17
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-nez v18, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v18

    if-eqz v18, :cond_19

    :cond_18
    invoke-static/range {v16 .. v16}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setFinalTryDataSwitchSlot(I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/MultiSimConnectivityManager;->switchDataNetworkForMMS(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v0, v16

    iput v0, v13, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const-wide/32 v19, 0xea60

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/TransactionService;->mSavedFlags:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/TransactionService;->mSavedStartId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] ====> onStartCommand()---> switch net to simSlot: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[TransactionService] TransactionService.mSwitching true"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x2

    goto/16 :goto_0

    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_1d

    sget-boolean v18, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] noNetwork change to false simSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService] ====> onStartCommand()---> Not switch simSlot = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v18

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1f

    move/from16 v0, v16

    if-eq v10, v0, :cond_1f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v18

    if-eqz v18, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-eqz v18, :cond_1f

    :cond_1e
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_1f

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[TransactionService] noNetwork change to true case 1"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    const-string v18, "ril.MSIMM"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    if-eq v10, v0, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v18

    if-nez v18, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v18

    if-eqz v18, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosGsmGsm()Z

    move-result v18

    if-eqz v18, :cond_1c

    :cond_20
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[TransactionService] noNetwork change to true case 2"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/Transaction;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v18

    if-nez v18, :cond_23

    const/4 v14, 0x1

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    const-string v18, "android.intent.action.ACTION_ONALARM"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    if-nez v14, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isDataEnabledInSettings()Z

    move-result v18

    if-nez v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[TransactionService] noNetwork is changed to false."

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v18

    goto/16 :goto_0

    :cond_23
    const/4 v14, 0x0

    goto :goto_5
.end method

.method protected registerConnectionStateReceiver(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method protected restoreSwitchedDataNetwork(I)V
    .locals 4
    .param p1    # I

    const-string v1, "persist.sys.dataprefer.simid"

    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService] restoreSwitchedDataNetwork mSwitching = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prefSimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    if-nez v1, :cond_4

    if-eq v0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->isEmptyProcessingTransactionWithSimSlot(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->isEmptyPendingTransactionWithSimSlot(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService] Data switch to SIM simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-nez v1, :cond_1

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MultiSimConnectivityManager;

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setFinalTryDataSwitchSlot(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/MultiSimConnectivityManager;->switchDataNetworkForMMS(I)V

    :cond_4
    return-void
.end method

.method protected sendIntentForInternalDataOnOff(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v6, -0x1

    const-string v3, "persist.sys.dataprefer.simid"

    iget v4, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "ril.datacross.simid"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] sendIntentForInternalDataOnOff(), callFunction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prefSimSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", crossSimSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.SET_PREFERRED_DATA_SLOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "callFunction"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "forMms"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "startUsingNetworkFeature"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "simSlot"

    iget v4, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "stopUsingNetworkFeature"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v6, :cond_0

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    if-eq v2, v3, :cond_0

    const-string v3, "simSlot"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected unregisterConnectionStateReceiver()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method protected unregisterConnectionStateReceiver(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 27
    .param p1    # Lcom/android/mms/transaction/Observable;

    move-object/from16 v25, p1

    check-cast v25, Lcom/android/mms/transaction/Transaction;

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move/from16 v21, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/android/mms/transaction/Transaction;->isNetworkAvailable(Landroid/net/ConnectivityManager;I)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] update transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] noNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyPendingTransactionWithSimSlot(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->restoreSwitchedDataNetwork(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] update: handle next pending transaction... simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v5, 0x4

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/transaction/Transaction;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/os/Message;->arg1:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v4, "update: ACK_TRANSACTION OR SPAMREC_TRANSACTION END"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_24

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] update: endMmsConnectivity simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getAppRestrictBackground(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getTypeTransState()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getTypeTransState()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(II)V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    :cond_8
    :goto_3
    throw v3

    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_a
    :try_start_6
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v19

    const-string v3, "state"

    move/from16 v0, v19

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    packed-switch v19, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] Transaction state unknown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] update: broadcast transaction result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver()V

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_2

    :pswitch_0
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] Transaction complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "uri"

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v13

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_11

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v12

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] autoDownload : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    if-ne v12, v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v0, v21

    if-eq v3, v0, :cond_c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v4, "[TransactionService] autoDownload change to false"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "GATE"

    const-string v4, "[TransactionService] <GATE-M>MMS_MSG_RCVD</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v12, :cond_f

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "GATE"

    const-string v4, "[TransactionService] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v3

    if-eqz v3, :cond_12

    const-wide/16 v4, -0x2

    const/4 v6, 0x0

    const-wide/16 v7, -0x2

    const/4 v9, -0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v11

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJIIZ)V

    :cond_f
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/mms/transaction/TransactionService;->processSendRetriveAck(Landroid/net/Uri;ZI)V

    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v13}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v12

    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v26

    if-eqz v26, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "mms"

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v23

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto :goto_8

    :pswitch_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "GATE"

    const-string v4, "[TransactionService] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getIsPermanetError()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_15
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_16
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/mms/transaction/TransactionService;->processSendRetriveAck(Landroid/net/Uri;ZI)V

    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_18
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v26

    if-eqz v26, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEcid()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/util/EcidLookup;->shouldWaitForEcidName(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v26

    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/mms/util/EcidLookup;->delayedNotification(Landroid/content/Context;Landroid/net/Uri;ZLandroid/net/Uri;I)V

    goto :goto_9

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v4, "retrieve complete MmsWidgetProvider.notifyDatasetChanged"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    goto :goto_9

    :cond_1a
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto :goto_9

    :pswitch_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "GATE"

    const-string v4, "[TransactionService] <GATE-M>MMS_MSG_SENT</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] Transaction failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getIsPermanetError()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-eqz v18, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    if-eqz v18, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "TransactionService"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1e

    move/from16 v0, v21

    if-ne v15, v0, :cond_b

    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    :cond_20
    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v4

    if-eqz v4, :cond_8

    sget v4, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_8

    sget v4, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(II)V

    goto/16 :goto_3

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver()V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    goto :goto_a

    :cond_23
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    sget v3, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(II)V

    goto/16 :goto_2

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver()V

    goto/16 :goto_5

    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    goto :goto_b

    :cond_26
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    sget v3, Lcom/android/mms/transaction/TransactionService;->sLastServiceId:I

    goto :goto_c

    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
