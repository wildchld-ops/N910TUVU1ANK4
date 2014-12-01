.class public abstract Lcom/android/mms/transaction/Transaction;
.super Lcom/android/mms/transaction/Observable;
.source "Transaction.java"


# static fields
.field public static final ACK_TRANSACTION:I = 0x4

.field public static final NOTIFICATION_TRANSACTION:I = 0x0

.field public static final NOT_DEFINE_TRANSACTION:I = -0x1

.field public static final READREC_TRANSACTION:I = 0x3

.field public static final RETRIEVE_TRANSACTION:I = 0x1

.field public static final SEND_TRANSACTION:I = 0x2

.field public static final SPAMREC_TRANSACTION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field public static final TRANSACTION_MSG_ID:Ljava/lang/String; = "MsgId"

.field public static final TRANSACTION_MSG_TYPE:Ljava/lang/String; = "MsgType"

.field public static final TRANSACTION_SPAMMSG_ID:Ljava/lang/String; = "SpamId"

.field public static final TRANSACTION_TRANS_ID:Ljava/lang/String; = "TansId"

.field private static final WAIT_COUNT_FOR_MMS_CONNECTIVITY:I = 0xf

.field private static final WAIT_MS_FOR_MMS_CONNECTIVITY:I = 0x226


# instance fields
.field protected mConnMgr:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field private final mServiceId:I

.field protected mSimSlot:I

.field protected mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

.field protected mTransactionState:Lcom/android/mms/transaction/TransactionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/transaction/Observable;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/mms/transaction/TransactionState;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iput p2, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mConnMgr:Landroid/net/ConnectivityManager;

    iput p4, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    return-void
.end method

.method private ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    if-nez p1, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Cannot establish route: url is null"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/mms/transaction/Transaction;->getConnectionType()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route to proxy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SKT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->getPhoneServiceState(Landroid/content/Context;)I

    move-result v7

    if-eq v7, v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->showPDPResetDialog(Landroid/content/Context;)V

    :cond_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Unknown host"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :try_start_1
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v7

    if-nez v7, :cond_5

    move v3, v6

    :goto_0
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/mms/transaction/Transaction;->getConnectionType()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v3, :cond_6

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SKT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->showPDPResetDialog(Landroid/content/Context;)V

    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Unknown host"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    return-void
.end method

.method private getConnectionType()I
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getSimSlot()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/net/ConnectivityManager;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/Transaction;->isNetworkAvailable(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/net/ConnectivityManager;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v3

    if-nez v3, :cond_5

    if-ne p1, v0, :cond_5

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] wifi network available!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    :cond_4
    return v0

    :cond_5
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static waitForActivatedMmsConnection(Landroid/net/ConnectivityManager;)Z
    .locals 8

    const/4 v0, 0x0

    const-string v5, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Mms:transaction"

    const-string v6, "waitForActivatedMmsConnection() does not work on main thread!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0xf

    if-ge v2, v5, :cond_1

    const/4 v5, 0x0

    const-string v6, "enableMMS"

    invoke-virtual {p0, v5, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    invoke-static {p0}, Lcom/android/mms/transaction/Transaction;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v3

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    const-string v5, "Mms:transaction"

    const-string v6, "connectionReady is ready"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    move v5, v0

    goto :goto_0

    :cond_2
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitForActivatedMmsConnection...status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", NetworkAvailable() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x226

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object v0
.end method

.method protected getPdu(Ljava/lang/String;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Transaction] MmsConfig.getTetheringMode() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTetheringMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Transaction;->loge(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    iget v11, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    move-object v3, p1

    move-object v9, v4

    move-object v10, v4

    invoke-static/range {v0 .. v11}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-object v3, p1

    move-object v9, v4

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getSimSlot()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    return v0
.end method

.method public getState()Lcom/android/mms/transaction/TransactionState;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isEquivalent(Lcom/android/mms/transaction/Transaction;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    if-ne v5, v3, :cond_2

    iget v5, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    invoke-virtual {v2, v5}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v0

    iget v5, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    if-ne v5, v7, :cond_1

    move v1, v3

    :goto_0
    const-string v3, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Transaction] autoDownload : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Transaction] dataSuspended : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Transaction] DataState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    if-ne v5, v7, :cond_3

    move v1, v3

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    check-cast p0, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->getContentLocation()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-virtual {p1}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    move v4, v3

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Mms:transaction"

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    invoke-static {v0, p1, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Mms:transaction"

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    invoke-static {v0, p1, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected logm(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Mms:transaction"

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    invoke-static {v0, p1, v1}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public abstract process()V
.end method

.method protected sendPdu(J[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu(J[BLandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Transaction] MmsConfig.getTetheringMode() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTetheringMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v7

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v9

    iget v12, p0, Lcom/android/mms/transaction/Transaction;->mSimSlot:I

    move-wide v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v1 .. v12}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;I)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v7

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v9

    move-wide v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v1 .. v11}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v1

    goto :goto_0
.end method

.method protected sendPdu([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([BLjava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateMessageSize(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 14

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v0, "MmsTransaction/HttpUtils"

    const-string v1, "updateMessageSize return due to uri null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "m_size"

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    :cond_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "m_size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v11, :cond_1

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
