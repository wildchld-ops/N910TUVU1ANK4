.class final Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "ImTransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/ImTransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/transaction/ImTransactionService;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 78
    .param p1    # Landroid/os/Message;

    const/16 v76, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    move-object/from16 v5, v76

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # invokes: Lcom/android/mms/rcs/transaction/ImTransactionService;->acquireWakeLock()V
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$000(Lcom/android/mms/rcs/transaction/ImTransactionService;)V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/mms/rcs/transaction/ImBaseBundle;

    const-string v6, "chat"

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Mms/ImTransactionService"

    const-string v8, "create chat transaction"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getThreadId()J

    move-result-wide v9

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getChatId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Mms/ImTransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add transaction : transaction Size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xe

    if-eq v6, v8, :cond_e

    invoke-virtual {v5}, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->getType()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    packed-switch v6, :pswitch_data_1

    :cond_1
    :goto_2
    :pswitch_1
    if-nez v5, :cond_2

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transaction was null. Stopping self: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v6, v7}, Landroid/app/Service;->stopSelf(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const-wide/16 v11, 0x7530

    move-object/from16 v0, v74

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v6, "ft"

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getBoxType()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_4

    const-string v6, "Mms/ImTransactionService"

    const-string v8, "create FT send transaction"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getThreadId()J

    move-result-wide v9

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getChatId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getMode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getStatus()I

    move-result v15

    invoke-direct/range {v5 .. v15}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_4
    new-instance v5, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getThreadId()J

    move-result-wide v9

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getChatId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getMode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getStatus()I

    move-result v15

    invoke-direct/range {v5 .. v15}, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    const-string v6, "Mms/ImTransactionService"

    const-string v8, "just create transaction"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getThreadId()J

    move-result-wide v9

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getChatId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getTransportType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    goto/16 :goto_1

    :cond_6
    :try_start_5
    const-string v6, "Mms/ImTransactionService"

    const-string v11, "transaction is already in processing queue.. ignore new transaction"

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_7

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transaction was null. Stopping self: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v6, v7}, Landroid/app/Service;->stopSelf(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const-wide/16 v11, 0x7530

    move-object/from16 v0, v74

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    move-exception v52

    :goto_3
    :try_start_8
    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occurred while handling message: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v52

    invoke-static {v6, v8, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v5, :cond_8

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transaction was null. Stopping self: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v6, v7}, Landroid/app/Service;->stopSelf(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const-wide/16 v11, 0x7530

    move-object/from16 v0, v74

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_2
    :try_start_9
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    move-object v0, v5

    check-cast v0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->requestChatId()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v6

    :goto_4
    if-nez v5, :cond_9

    const-string v8, "Mms/ImTransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transaction was null. Stopping self: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v8, v7}, Landroid/app/Service;->stopSelf(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v8}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v8

    const/4 v11, 0x5

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v8}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v8

    const/4 v11, 0x5

    invoke-virtual {v8, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v8}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v8

    const-wide/16 v11, 0x7530

    move-object/from16 v0, v74

    invoke-virtual {v8, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    throw v6

    :cond_a
    :try_start_a
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->process()V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_b

    move-object v0, v5

    check-cast v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->requestChatId()V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->process()V

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xf

    if-ne v6, v8, :cond_c

    move-object v0, v5

    check-cast v0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->process()V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x11

    if-ne v6, v8, :cond_d

    move-object v0, v5

    check-cast v0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->acceptDownload()V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x10

    if-ne v6, v8, :cond_1

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v5}, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xf

    if-ne v6, v8, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;->process()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Landroid/content/Intent;

    const-string v6, "chatId"

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string v6, "messageId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, v70

    invoke-virtual {v0, v6, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v65

    const-string v6, "isGroupChat"

    const/4 v8, 0x0

    move-object/from16 v0, v70

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v60

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsChatReceiveTransaction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {v5, v6, v7}, Lcom/android/mms/rcs/transaction/RcsChatReceiveTransaction;-><init>(Landroid/content/Context;I)V

    move-object v6, v5

    check-cast v6, Lcom/android/mms/rcs/transaction/RcsChatReceiveTransaction;

    move-object/from16 v0, v47

    move-wide/from16 v1, v65

    move/from16 v3, v60

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/mms/rcs/transaction/RcsChatReceiveTransaction;->onMessageReceived(Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/content/Intent;

    const-string v6, "ftSessionId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v55

    const-string v6, "requestMsgId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    const-string v6, "isResumeable"

    const/16 v8, -0xa

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const-string v6, "cancel_reason"

    const/16 v8, -0xa

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v6, "bytes_transf"

    const/4 v8, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    const-string v6, "file_size"

    const/4 v8, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v53

    const-string v6, "status"

    const/16 v8, -0xa

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v75

    const-string v6, "reason"

    const/16 v8, -0xa

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ftSessionId = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v55

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " requestMsgId = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isResumeable = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " cancel_reason = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes_transf = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " file_size = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "status = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v75

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " reason = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    cmp-long v6, v24, v11

    if-lez v6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v21

    monitor-enter v21

    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v57, :cond_29

    :try_start_c
    const-string v6, "Mms/ImTransactionService"

    const-string v8, "Ft Transaction is null. make transaction queue forcely"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    const/16 v50, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v50

    if-eqz v50, :cond_28

    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "thread_id"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v14, v6

    const-string v6, "chat_session_id"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v6, "address"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v6, "status"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v6, "type"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_12

    new-instance v10, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v17, "ft"

    invoke-static/range {v18 .. v18}, Lcom/android/mms/rcs/RcsChatManager;->getSizeOfRecipient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move v12, v7

    invoke-direct/range {v10 .. v20}, Lcom/android/mms/rcs/transaction/RcsFtReceiveTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_5
    :try_start_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add transaction forcely  : transaction Size = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    :cond_f
    :goto_6
    if-eqz v50, :cond_10

    :try_start_f
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_10
    :goto_7
    monitor-exit v21
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_11
    if-eqz v10, :cond_0

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_14

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v26}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->onFTCanceled(Ljava/lang/Long;IJI)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :cond_12
    :try_start_10
    new-instance v10, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v17, "ft"

    invoke-static/range {v18 .. v18}, Lcom/android/mms/rcs/RcsChatManager;->getSizeOfRecipient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move v12, v7

    invoke-direct/range {v10 .. v20}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v6

    move-object/from16 v10, v57

    :goto_8
    if-eqz v50, :cond_13

    :try_start_11
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v6

    :catchall_3
    move-exception v6

    :goto_9
    monitor-exit v21
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v6

    :cond_14
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_15

    check-cast v10, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v10, v6, v0, v1}, Lcom/android/mms/rcs/transaction/RcsFtSendTransaction;->onFTAttached(Ljava/lang/Long;J)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x9

    if-ne v6, v8, :cond_16

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v0, v46

    move/from16 v1, v53

    invoke-virtual {v10, v6, v0, v1}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->onFTProgress(Ljava/lang/Long;II)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_17

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v0, v75

    invoke-virtual {v10, v6, v0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->onFTCompleted(Ljava/lang/Long;I)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xb

    if-ne v6, v8, :cond_18

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v27, v10

    move-wide/from16 v30, v24

    move/from16 v32, v26

    invoke-virtual/range {v27 .. v32}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->onFTRequestFailed(Ljava/lang/Long;IJI)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xc

    if-ne v6, v8, :cond_0

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v10, v6, v0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->onFTInterrupted(Ljava/lang/Long;I)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/content/Intent;

    const-string v6, "messageId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, v59

    invoke-virtual {v0, v6, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v68

    const-string v6, "requestMsgId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, v59

    invoke-virtual {v0, v6, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v72

    const-string v6, "update"

    const/4 v8, 0x0

    move-object/from16 v0, v59

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v77

    const-string v6, "reason"

    const/4 v8, 0x0

    move-object/from16 v0, v59

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v48

    const-string v6, "errorReason"

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "messageId = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v68

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " requestMsgId = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v72

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Mms/ImTransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v77

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " reason = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " errorReason = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v72

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    const/16 v32, 0x0

    const-wide/16 v11, 0x0

    cmp-long v6, v72, v11

    if-lez v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    :try_start_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-nez v49, :cond_27

    :try_start_13
    const-string v6, "Mms/ImTransactionService"

    const-string v11, "Chat Transaction is null. make transaction queue forcely"

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    const/16 v50, 0x0

    :try_start_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v30 .. v35}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v50

    if-eqz v50, :cond_26

    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_26

    new-instance v64, Ljava/lang/String;

    invoke-direct/range {v64 .. v64}, Ljava/lang/String;-><init>()V

    const-string v6, "thread_id"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v14, v6

    const-string v6, "session_id"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    const-string v6, "address"

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_19

    invoke-static/range {v18 .. v18}, Lcom/android/mms/rcs/RcsUtils;->extractingAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    :cond_19
    new-instance v32, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v39, "im"

    move/from16 v34, v7

    move-wide/from16 v36, v14

    move-object/from16 v40, v18

    invoke-direct/range {v32 .. v40}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Mms/ImTransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add transaction forcely  : transaction Size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :cond_1a
    :goto_a
    if-eqz v50, :cond_1b

    :try_start_16
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_1b
    :goto_b
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :cond_1c
    if-eqz v32, :cond_0

    if-eqz v77, :cond_1e

    move-object/from16 v0, v32

    move-wide/from16 v1, v68

    move/from16 v3, v48

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->onMessageSentUpdate(JZLjava/lang/String;)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    move-object/from16 v32, v49

    :goto_c
    if-eqz v50, :cond_1d

    :try_start_17
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_1d
    throw v6

    :catchall_5
    move-exception v6

    :goto_d
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    throw v6

    :cond_1e
    move-object/from16 v0, v32

    move-wide/from16 v1, v68

    move-wide/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->onMessageSent(JJ)V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Ljava/lang/String;

    if-eqz v61, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    :try_start_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/mms/rcs/transaction/ImBaseTransaction;

    if-eqz v71, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual/range {v71 .. v71}, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->getServiceId()I

    move-result v11

    # invokes: Lcom/android/mms/rcs/transaction/ImTransactionService;->stopSelfIfIdle(I)V
    invoke-static {v6, v11}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$300(Lcom/android/mms/rcs/transaction/ImTransactionService;I)V

    :cond_1f
    const-string v6, "Mms/ImTransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove chat : transaction Size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "Mms/ImTransactionService"

    const-string v11, "transaction queue is empty. stop service...."

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v11, 0x5

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v6}, Landroid/app/Service;->stopSelf()V

    :cond_20
    monitor-exit v8

    move-object/from16 v5, v76

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw v6

    :pswitch_a
    const-string v6, "Mms/ImTransactionService"

    const-string v8, "check the validation of transactions"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # invokes: Lcom/android/mms/rcs/transaction/ImTransactionService;->acquireWakeLock()V
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$000(Lcom/android/mms/rcs/transaction/ImTransactionService;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    :try_start_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v63

    const-string v6, "Mms/ImTransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remain transaction size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mProcessingTransaction:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$100(Lcom/android/mms/rcs/transaction/ImTransactionService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v58

    :goto_e
    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    invoke-static/range {v62 .. v62}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    move-result-object v40

    const/16 v50, 0x0

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v39 .. v44}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v50

    if-eqz v50, :cond_21

    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_22

    :cond_21
    const-string v6, "Mms/ImTransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No Chat transaction. remove transaction Uri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v67

    invoke-virtual/range {v40 .. v40}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v67

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    move-object/from16 v0, v67

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :cond_22
    if-eqz v50, :cond_23

    :try_start_1b
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const/4 v11, 0x5

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v6

    const-wide/16 v11, 0x7530

    move-object/from16 v0, v74

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_e

    :catchall_7
    move-exception v6

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    throw v6

    :catchall_8
    move-exception v6

    if-eqz v50, :cond_24

    :try_start_1c
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_24
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/ImTransactionService;

    # getter for: Lcom/android/mms/rcs/transaction/ImTransactionService;->mServiceHandler:Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/ImTransactionService;->access$200(Lcom/android/mms/rcs/transaction/ImTransactionService;)Lcom/android/mms/rcs/transaction/ImTransactionService$ServiceHandler;

    move-result-object v11

    const-wide/16 v12, 0x7530

    move-object/from16 v0, v74

    invoke-virtual {v11, v0, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    throw v6

    :cond_25
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    move-object/from16 v5, v76

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    move-object/from16 v5, v76

    goto/16 :goto_0

    :catchall_9
    move-exception v6

    move-object/from16 v32, v49

    goto/16 :goto_d

    :catchall_a
    move-exception v6

    goto/16 :goto_c

    :catchall_b
    move-exception v6

    move-object/from16 v10, v57

    goto/16 :goto_9

    :catchall_c
    move-exception v6

    goto/16 :goto_8

    :catchall_d
    move-exception v6

    move-object/from16 v5, v76

    goto/16 :goto_4

    :catch_1
    move-exception v52

    move-object/from16 v5, v76

    goto/16 :goto_3

    :cond_26
    move-object/from16 v32, v49

    goto/16 :goto_a

    :cond_27
    move-object/from16 v32, v49

    goto/16 :goto_b

    :cond_28
    move-object/from16 v10, v57

    goto/16 :goto_6

    :cond_29
    move-object/from16 v10, v57

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch
.end method
