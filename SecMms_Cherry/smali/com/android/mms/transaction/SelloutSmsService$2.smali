.class Lcom/android/mms/transaction/SelloutSmsService$2;
.super Landroid/telephony/PhoneStateListener;
.source "SelloutSmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SelloutSmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SelloutSmsService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SelloutSmsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/SelloutSmsService$2;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "SelloutSmsService"

    const-string v3, "onServiceStateChanged2"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$2;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/mms/transaction/SelloutSmsService;->access$600(Lcom/android/mms/transaction/SelloutSmsService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$2;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # invokes: Lcom/android/mms/transaction/SelloutSmsService;->isSelloutNetwork(I)Z
    invoke-static {v2, v5}, Lcom/android/mms/transaction/SelloutSmsService;->access$100(Lcom/android/mms/transaction/SelloutSmsService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$2;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # invokes: Lcom/android/mms/transaction/SelloutSmsService;->isSelloutSim(I)Z
    invoke-static {v2, v5}, Lcom/android/mms/transaction/SelloutSmsService;->access$200(Lcom/android/mms/transaction/SelloutSmsService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$2;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/transaction/SelloutSmsService;->access$300(Lcom/android/mms/transaction/SelloutSmsService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getSsmsInfo(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "ssms_state"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "SelloutSmsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged2 ssms_state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sellout_sms_on_progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/SelloutSmsService;->sellout_sms_on_progress:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sMsgSendingAttempt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I
    invoke-static {}, Lcom/android/mms/transaction/SelloutSmsService;->access$400()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService;->sellout_sms_on_progress:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I
    invoke-static {}, Lcom/android/mms/transaction/SelloutSmsService;->access$400()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    # operator++ for: Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I
    invoke-static {}, Lcom/android/mms/transaction/SelloutSmsService;->access$408()I

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$2;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # invokes: Lcom/android/mms/transaction/SelloutSmsService;->sendSelloutSMS(I)V
    invoke-static {v2, v5}, Lcom/android/mms/transaction/SelloutSmsService;->access$500(Lcom/android/mms/transaction/SelloutSmsService;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method
