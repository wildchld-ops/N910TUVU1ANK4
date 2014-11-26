.class Lcom/android/mms/transaction/SelloutSmsService$3;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "SimID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v2, "SelloutSmsService"

    const-string v3, "sendSMSFail"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    iget-object v3, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->mServiceStartId:I
    invoke-static {v3}, Lcom/android/mms/transaction/SelloutSmsService;->access$700(Lcom/android/mms/transaction/SelloutSmsService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    :goto_0
    return-void

    :pswitch_1
    const-string v2, "SelloutSmsService"

    const-string v3, "sendSMSPass"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ssms_state"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/transaction/SelloutSmsService;->access$300(Lcom/android/mms/transaction/SelloutSmsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/SSMSInfoProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/SelloutSmsService;->sellout_sms_on_progress:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    iget-object v3, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->mServiceStartId:I
    invoke-static {v3}, Lcom/android/mms/transaction/SelloutSmsService;->access$700(Lcom/android/mms/transaction/SelloutSmsService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    :pswitch_2
    const-string v2, "SelloutSmsService"

    const-string v3, "sendSMSFail"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/SelloutSmsService;->sellout_sms_on_progress:Ljava/lang/Boolean;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I
    invoke-static {}, Lcom/android/mms/transaction/SelloutSmsService;->access$400()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    # operator++ for: Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I
    invoke-static {}, Lcom/android/mms/transaction/SelloutSmsService;->access$408()I

    const-string v2, "SelloutSmsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resending message attempt number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I
    invoke-static {}, Lcom/android/mms/transaction/SelloutSmsService;->access$400()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    iget-object v3, p0, Lcom/android/mms/transaction/SelloutSmsService$3;->this$0:Lcom/android/mms/transaction/SelloutSmsService;

    # getter for: Lcom/android/mms/transaction/SelloutSmsService;->mServiceStartId:I
    invoke-static {v3}, Lcom/android/mms/transaction/SelloutSmsService;->access$700(Lcom/android/mms/transaction/SelloutSmsService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    const-string v2, "SelloutSmsService"

    const-string v3, "Number of maximum retry attempts exceeded."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
