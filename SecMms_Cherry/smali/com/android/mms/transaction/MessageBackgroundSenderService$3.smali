.class Lcom/android/mms/transaction/MessageBackgroundSenderService$3;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v3, "Mms/MessageBackgroundSenderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received from service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/MessageBackgroundSenderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received from service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/MessageBackgroundSenderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received from service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$300(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c002e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    # setter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$2202(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$2200(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v3, v3, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mSnsCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v3, v3, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mSnsCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/ISnsRemoteServiceCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5, v2}, Lcom/android/mms/transaction/ISnsRemoteServiceCallback;->onResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v3, v3, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mSnsCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
