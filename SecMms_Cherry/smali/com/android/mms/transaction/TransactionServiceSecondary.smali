.class public Lcom/android/mms/transaction/TransactionServiceSecondary;
.super Lcom/android/mms/transaction/TransactionService;
.source "TransactionServiceSecondary.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;-><init>()V

    const-string v0, "Mms:transactionSecondary"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO:I

    const-string v0, "enableMMS2"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_FEATURE:Ljava/lang/String;

    const-string v0, "mobile_mms2"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    const-string v0, "TransactionServiceSecondary"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    const-string v0, "MmsSystemEventReceiverSecondary"

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_RECEIVER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRetryIntent()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONALARM"

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionServiceSecondary;

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

    const-class v1, Lcom/android/mms/transaction/TransactionServiceSecondary;

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

.method protected registerConnectionStateReceiver(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->registerForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method protected unregisterConnectionStateReceiver()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method

.method protected unregisterConnectionStateReceiver(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->unRegisterForConnectionStateChanges(Landroid/content/Context;I)V

    return-void
.end method
