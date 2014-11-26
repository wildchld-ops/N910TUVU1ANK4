.class public Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method protected constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move/from16 v23, v0

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mInsertedSimNum:I
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1900(Lcom/android/mms/transaction/TransactionService;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_5

    const-string v27, "com.samsung.intent.action.SET_PREFERRED_DATA_SLOT_COMPLETED"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const-string v27, "simSlot"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const-string v27, "forMms"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] forMms = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", switchedDataSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mSwitching = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-boolean v29, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_0

    sget-boolean v27, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    if-nez v27, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "[TransactionService] SET_PREFERRED_DATA_SLOT_COMPLETED, not forMms"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v27, "TransactionService"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    if-eqz v24, :cond_4

    :cond_3
    const-string v27, "TransactionServiceSecondary"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    :cond_4
    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] TransactionService.mSwitching false, switchedDataSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, v24

    iput v0, v14, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v27

    if-nez v27, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v27

    if-eqz v27, :cond_a

    :cond_6
    const-string v27, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    const-string v27, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-boolean v27, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    if-eqz v19, :cond_a

    const-string v27, "dataAttached"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7

    const-string v27, "connected"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v27

    if-nez v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] attached, but return mSavedIntent is null simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v6, Lcom/android/mms/transaction/TransactionBundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    const-string v27, "simSlot"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_MULTISIM_SLOT:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionBundle;->getSimSlot()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] Switched TYPE_MOBILE network mmsSendingSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    if-ne v13, v7, :cond_9

    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "[TransactionService] mmsSendingSlot == attachedSimSlot, TransactionService.mSwitching false"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    iput v7, v14, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v27

    if-eqz v27, :cond_1

    sget-object v27, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sDataConnectionWaitCount:[I

    const/16 v28, 0x0

    aput v28, v27, v13

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "[TransactionService] this is not wanted data network."

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v27

    if-eqz v27, :cond_c

    :cond_b
    sget-boolean v27, Lcom/android/mms/transaction/TransactionService;->mSwitching:Z

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] Not switched TYPE_MOBILE network = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v27, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    const-string v27, "noConnectivity"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    const-string v27, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkInfo;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # invokes: Lcom/android/mms/transaction/TransactionService;->isDataEnabledInSettings()Z
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$2000(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v9

    const/4 v5, 0x0

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    const/4 v12, 0x1

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v27

    if-eqz v27, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v27

    if-nez v27, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

    move-result v27

    if-eqz v27, :cond_e

    :cond_d
    const-string v27, "persist.sys.dataprefer.simid"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v23

    const/4 v8, -0x1

    const-string v27, "ril.datacross.simid"

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] crossSimSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", getLogicalSimSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v8, v0, :cond_e

    move/from16 v23, v8

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] Handle ConnectivityBroadcastReceiver.onReceive(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_11

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v27

    if-nez v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$2100(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v27

    if-eqz v27, :cond_11

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v27

    const-string v28, "lostDataConnection"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "[TransactionService] mobile_mms is disconnected because of retry connection at single PDP, so it is ignored."

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_11
    if-nez v12, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService]    type is not "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_15

    const-string v27, "2GVoiceCallEnded"

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService]    reason is 2GVoiceCallEnded, retrying mms connectivity simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-direct {v0, v1, v5, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "[TransactionService]    empty MMSC url, bail"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    # invokes: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity(I)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v27

    if-eqz v27, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v27

    if-nez v27, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v27

    if-eqz v27, :cond_1a

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRestrictApnExtension()Z

    move-result v27

    if-eqz v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v27, 0x0

    # setter for: Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1202(I)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move/from16 v3, v23

    # invokes: Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->access$2200(Lcom/android/mms/transaction/TransactionService$ServiceHandler;Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V

    :cond_15
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v27

    if-eqz v27, :cond_1d

    :cond_16
    if-eqz v15, :cond_1d

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    if-nez v27, :cond_1d

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$2100(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v27

    if-eqz v27, :cond_1d

    const/16 v18, 0x0

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v27

    move/from16 v1, v23

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    if-eqz v18, :cond_17

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v17

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_17
    if-gtz v17, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v27

    if-eqz v27, :cond_1c

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity(I)I

    move-result v21

    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-le v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] failed to activate PDP for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v27

    if-eqz v27, :cond_1

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "Network Info not null"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "ConnectivityBroadcastReceiver empty MMSC url, bail"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x7

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    :catchall_0
    move-exception v27

    if-eqz v18, :cond_1b

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v17

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1b
    throw v27

    :cond_1c
    if-nez v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V

    goto/16 :goto_4

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v27

    if-eqz v27, :cond_19

    if-nez v23, :cond_19

    const-string v27, "TransactionService"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_TRANSACTION_CLASS_NAME:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onReceive() !mPending.isEmpty(Slot1) = "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->isEmptyPendingTransactionWithSimSlot(I)Z

    move-result v27

    if-nez v27, :cond_1e

    const/16 v27, 0x1

    :goto_5
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, ", isEmptyProcessingTransactionWithSimSlot(Slot1) = "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/mms/transaction/TransactionService;->isEmptyProcessingTransactionWithSimSlot(I)Z

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_19

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    if-nez v27, :cond_19

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/mms/transaction/TransactionService;->isEmptyPendingTransactionWithSimSlot(I)Z

    move-result v27

    if-nez v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/mms/transaction/TransactionService;->isEmptyProcessingTransactionWithSimSlot(I)Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "beginMmsConnectivity requested!!!, result = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v28

    monitor-enter v28

    :try_start_1
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_21

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v29, "pendded tansaction exist"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v20

    const/16 v27, 0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v29, "mms reconnect requested"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    monitor-exit v28

    goto/16 :goto_0

    :catchall_1
    move-exception v27

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v27

    :cond_21
    :try_start_2
    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :cond_22
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v27

    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "onReceive : removeMessages(EVENT_MMS_CONNECTIVITY_START_CHECK)"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x6

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    :cond_23
    if-eqz v15, :cond_2e

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-nez v27, :cond_2e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v27

    if-eqz v27, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v28

    monitor-enter v28

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v29, "   processing transaction exist"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/mms/transaction/SendTransaction;

    move/from16 v27, v0

    if-eqz v27, :cond_25

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/SendTransaction;->isSending()Z

    move-result v27

    if-eqz v27, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is dropped from copying to PND"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_2
    move-exception v27

    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v27

    :cond_25
    :try_start_4
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/mms/transaction/NotificationTransaction;

    move/from16 v27, v0

    if-eqz v27, :cond_27

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/NotificationTransaction;->isNotiProcessing()Z

    move-result v27

    if-eqz v27, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is dropped from copying to PND"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v29

    monitor-enter v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ConnectivityBroadcastReceiver : retry_count"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v31, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v31 .. v31}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ConnectivityBroadcastReceiver=> mPending is not empty :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v31, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    # setter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$1302(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v30 .. v30}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v30

    const/16 v31, 0x5

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    const-wide/16 v31, 0x2710

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_2a
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v27

    if-nez v27, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$2100(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v27

    if-eqz v27, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is disconnected even waiting for connected"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/mms/transaction/Transaction;->isNetworkAvailable(Landroid/net/ConnectivityManager;I)Z

    move-result v27

    if-eqz v27, :cond_2d

    if-eqz v9, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] beginMmsConnectivity()..  simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity(I)I

    move-result v21

    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-le v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] failed to activate PDP for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService]    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " not connected, bail"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    # setter for: Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    invoke-static/range {v27 .. v28}, Lcom/android/mms/transaction/TransactionService;->access$1002(Lcom/android/mms/transaction/TransactionService;Z)Z

    goto/16 :goto_0

    :catchall_3
    move-exception v27

    :try_start_7
    monitor-exit v29
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v27
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] beginMmsConnectivity: result="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService] register "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_RECEIVER_CLASS_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " since noNetwork"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->registerConnectionStateReceiver(I)V

    goto/16 :goto_8

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService]    PDP for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->DEFAULT_NETWORK_INFO_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is connected"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-direct {v0, v1, v5, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService]    but empty MMSC url, bail simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[TransactionService]    Take the next step to process transactions simSlot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->unregisterConnectionStateReceiver(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    # setter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static/range {v27 .. v28}, Lcom/android/mms/transaction/TransactionService;->access$2102(Lcom/android/mms/transaction/TransactionService;Z)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v27

    if-nez v27, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    # invokes: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity(I)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v27

    if-eqz v27, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v27

    if-nez v27, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v27

    if-eqz v27, :cond_32

    :cond_30
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRestrictApnExtension()Z

    move-result v27

    if-eqz v27, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v27, 0x0

    # setter for: Lcom/android/mms/transaction/TransactionService;->mRetryCountForApnExtension:I
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1202(I)I

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move/from16 v3, v23

    # invokes: Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->access$2200(Lcom/android/mms/transaction/TransactionService$ServiceHandler;Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V

    goto/16 :goto_0

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v28, 0x7

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v28

    monitor-enter v28

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    # invokes: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity(I)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v27

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    move/from16 v3, v23

    # invokes: Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->access$2200(Lcom/android/mms/transaction/TransactionService$ServiceHandler;Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V

    :cond_34
    monitor-exit v28

    goto/16 :goto_0

    :catchall_4
    move-exception v27

    monitor-exit v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v27
.end method
