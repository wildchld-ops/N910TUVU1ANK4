.class Lcom/android/mms/transaction/TransactionService$2;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] return mSavedIntent is null simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionBundle;->getSimSlot()I

    move-result v2

    if-ne v2, v1, :cond_1

    sput-boolean v6, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] ====>mSwitchedHandler, MSG_SWITCHED_NETWORK_CHECK recevied, we now startCommand again, mSwitching false simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedFlags:I
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedStartId:I
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v5

    # invokes: Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;IIZ)I

    goto :goto_0

    :cond_1
    sput-boolean v7, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] ====>mSwitchedHandler, MSG_SWITCHED_NETWORK_CHECK recevied, but this is not wanted data network, mSwitching true simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    const-string v3, "[TransactionService] ====>mSwitchedHandler, MSG_WAITING_NETWORK_SWITCH_TIME_OUT recevied, but ignore because isOnCall true"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-nez v1, :cond_5

    const-string v2, "persist.sys.dataprefer.simid"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/MultiSimConnectivityManager;->switchDataNetworkForMMS(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataConnectionWaitCount:[I

    aget v3, v2, v6

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v6

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] ====>mSwitchedHandler, MSG_WAITING_NETWORK_SWITCH_TIME_OUT recevied, we now startCommand again, mSwitching false simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedFlags:I
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedStartId:I
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v5

    # invokes: Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I
    invoke-static {v2, v3, v4, v5, v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;IIZ)I

    goto/16 :goto_0

    :cond_5
    if-ne v1, v7, :cond_4

    const-string v2, "persist.sys.dataprefer.simid"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/MultiSimConnectivityManager;->switchDataNetworkForMMS(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataConnectionWaitCount:[I

    aget v3, v2, v7

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
