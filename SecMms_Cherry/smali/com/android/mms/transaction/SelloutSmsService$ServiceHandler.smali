.class final Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;
.super Landroid/os/Handler;
.source "SelloutSmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SelloutSmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SelloutSmsService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SelloutSmsService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    # setter for: Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3, v2}, Lcom/android/mms/transaction/SelloutSmsService;->access$002(Lcom/android/mms/transaction/SelloutSmsService;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/mms/transaction/SelloutSmsService;->access$000(Lcom/android/mms/transaction/SelloutSmsService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    iget-object v3, v3, Lcom/android/mms/transaction/SelloutSmsService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
