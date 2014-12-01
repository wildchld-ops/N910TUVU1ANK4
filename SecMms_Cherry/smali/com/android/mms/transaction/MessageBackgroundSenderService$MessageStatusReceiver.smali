.class Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageBackgroundSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;Lcom/android/mms/transaction/MessageBackgroundSenderService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v6, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "com.android.mms.transaction.MESSAGE_MSG_ID"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v3, 0x0

    const-string v6, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z
    invoke-static {v6}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$100(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "Mms/MessageBackgroundSenderService"

    const-string v7, "onReceived() return"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v6, "com.android.mms.transaction.MESSAGE_STATUS"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "com.android.mms.transaction.MESSAGE_TYPE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v9, :cond_3

    :cond_2
    if-ne v2, v8, :cond_5

    if-ne v1, v8, :cond_5

    :cond_3
    const/4 v3, 0x1

    :cond_4
    :goto_1
    const-string v6, "Mms/MessageBackgroundSenderService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Application ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$800(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$800(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v4, v5, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    const/4 v6, 0x5

    if-eq v1, v6, :cond_7

    :cond_6
    if-ne v2, v8, :cond_4

    if-ne v1, v9, :cond_4

    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method
