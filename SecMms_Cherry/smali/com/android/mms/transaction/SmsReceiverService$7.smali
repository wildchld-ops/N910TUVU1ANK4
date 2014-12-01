.class Lcom/android/mms/transaction/SmsReceiverService$7;
.super Landroid/telephony/PhoneStateListener;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "PCW LOCK. Send Lock message."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recipient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # getter for: Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$2200(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # getter for: Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$2300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # getter for: Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->access$2200(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # getter for: Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->access$2200(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # getter for: Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$2200(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$7;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # getter for: Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$2300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/mms/transaction/SmsReceiverService;->sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$2400(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "PCW LOCK Recipient is invalidate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
