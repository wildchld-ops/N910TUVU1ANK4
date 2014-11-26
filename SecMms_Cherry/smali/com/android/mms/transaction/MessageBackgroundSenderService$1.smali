.class Lcom/android/mms/transaction/MessageBackgroundSenderService$1;
.super Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;
.source "MessageBackgroundSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-direct {p0}, Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedAttchType(Landroid/content/Intent;)Z
    .locals 5
    .param p1    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "Mms/MessageBackgroundSenderService"

    const-string v4, "getSupportedAttchType CALLED!!!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$400(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService;->isAttachSupportedType(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$500(Lcom/android/mms/transaction/MessageBackgroundSenderService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendMessage(IILandroid/content/Intent;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Mms/MessageBackgroundSenderService"

    const-string v1, "sendMessage CALLED!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/content/Context;IILandroid/content/Intent;)V

    # setter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgSender:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;
    invoke-static {v6, v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$602(Lcom/android/mms/transaction/MessageBackgroundSenderService;Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgSender:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;
    invoke-static {v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$600(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgSender:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;
    invoke-static {v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$600(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    move-result-object v0

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendBGMessage()V
    invoke-static {v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$700(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$100(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$300(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgStatusReceiver:Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;
    invoke-static {v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$200(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    const/4 v2, 0x1

    # setter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z
    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$102(Lcom/android/mms/transaction/MessageBackgroundSenderService;Z)Z

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$100(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$300(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgStatusReceiver:Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;
    invoke-static {v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$200(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z
    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$102(Lcom/android/mms/transaction/MessageBackgroundSenderService;Z)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageBackgroundSenderService"

    const-string v2, "mMsgStatusReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
