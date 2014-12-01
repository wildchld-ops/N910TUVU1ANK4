.class final Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "AutoSmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/oem/AutoSmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoSmsSending()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.mms.oem.AUTO_SMS_MESSAGE_SENT_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    # invokes: Lcom/android/mms/oem/AutoSmsReceiverService;->handleAutoSmsSent(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/mms/oem/AutoSmsReceiverService;->access$000(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    invoke-static {v3, v2}, Lcom/android/mms/oem/AutoSmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    # invokes: Lcom/android/mms/oem/AutoSmsReceiverService;->handleAutoSmsAlarm(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/mms/oem/AutoSmsReceiverService;->access$100(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0
.end method
