.class public Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary$WakeUpHandler;
.super Landroid/os/Handler;
.source "MmsSystemEventReceiverSecondary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeUpHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1    # Landroid/os/Looper;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "Mms:transactionSecondary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSystemEventReceiver] what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v3, "Mms:transactionSecondary"

    const-string v6, "[MmsSystemEventReceiver] EVENT_WAKE_UP_SERVICE"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, p1, Landroid/os/Message;->arg1:I

    :cond_1
    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$000()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "Mms:transactionSecondary"

    const-string v4, "[MmsSystemEventReceiver] context null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    # setter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$102(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$100()Landroid/net/ConnectivityManager;

    move-result-object v3

    const/16 v6, 0x1a

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    # setter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I
    invoke-static {v5}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$202(I)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_4

    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$000()Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->wakeUpService(Landroid/content/Context;I)V
    invoke-static {v3, v2}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$300(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$000()Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->wakeUpService(Landroid/content/Context;)V
    invoke-static {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$400(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$200()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_6

    const-string v3, "Mms:transactionSecondary"

    const-string v4, "[MmsSystemEventReceiver] cannot use mobile_mms2"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->bExecutingEvent:Z
    invoke-static {v5}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$502(Z)Z

    goto :goto_0

    :cond_6
    const-string v3, "Mms:transactionSecondary"

    const-string v5, "[MmsSystemEventReceiver] mobile_mms2 is not available"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # operator++ for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->waitCount:I
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$208()I

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_7

    iput v2, p1, Landroid/os/Message;->arg1:I

    const-string v3, "Mms:transactionSecondary"

    const-string v4, "[MmsSystemEventReceiver] insert simSlot for next EVENT_WAKE_UP_SERVICE"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_1
    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$000()Landroid/content/Context;

    move-result-object v3

    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiverSecondary;->access$000()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "Mms:transactionSecondary"

    const-string v4, "EVENT_WAKE_UP_SERVICE_NO_SVC - toast download_later"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
