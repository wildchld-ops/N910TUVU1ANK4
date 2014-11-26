.class final Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CmasReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/CmasReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/CmasReceiverService;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseAnotherCMASApp()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Mms/CmasReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAS]Receiver handleMessage : Action ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "errorCode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Mms/CmasReceiverService"

    const-string v5, "GSM CMAS message received"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    # invokes: Lcom/android/mms/transaction/CmasReceiverService;->HandlingCMASByType(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/CmasReceiverService;->access$100(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    const-string v4, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Mms/CmasReceiverService"

    const-string v5, "KT CMAS Test message received"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    # invokes: Lcom/android/mms/transaction/CmasReceiverService;->HandlingCMASByType(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/CmasReceiverService;->access$100(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-static {v5, v3}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    throw v4
.end method
