.class Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsChatSendTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;-><init>(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    iget-object v6, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    # getter for: Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mSTransactionSync:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->access$300(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "chat_id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "request_thread_id"

    const/4 v8, -0x1

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-long v4, v6

    const-string v6, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "response_status"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "request_type"

    const/4 v8, -0x1

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "Mms/RcsChatSendTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received CREATE_CHAT_RESPONSE with chatId("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " requestedThreadId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Mms/RcsChatSendTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received CREATE_CHAT_RESPONSE with isSuccess("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getThreadId()J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    # getter for: Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->access$100(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)Landroid/os/Handler;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    invoke-virtual {v6, v1}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->updateChatId(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    invoke-virtual {v6}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->process()V

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
