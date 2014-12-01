.class Lcom/android/phone/TPhoneService$4;
.super Landroid/os/Handler;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_0

    const-string v1, "TPhoneService"

    const-string v2, "[TPhone] TPhone intall complete start install TDial"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->InstallTDialPkg()V
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$3000(Lcom/android/phone/TPhoneService;)V

    goto :goto_0

    :cond_0
    const-string v1, "TPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TPhone] TPhone intall ERROR!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->CancelTphoneInstallNotification()V
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$3100(Lcom/android/phone/TPhoneService;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->completeTPhoneInstall()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/phone/TPhoneService;->SetTPhoneInstallState(I)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->CancelTphoneInstallNotification()V
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$3100(Lcom/android/phone/TPhoneService;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_1

    const-string v1, "TPhoneService"

    const-string v2, "[TPhone] TDial intall complete"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->completeTPhoneInstall()V

    goto :goto_0

    :cond_1
    const-string v1, "TPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TPhone] TDial intall ERROR!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/TPhoneService$4;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
