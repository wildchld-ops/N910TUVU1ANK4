.class final Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;
.super Landroid/os/Handler;
.source "SilentBackgroundMessageSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inside onHandleMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    new-instance v2, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;-><init>(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Runnable;)V

    # setter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;
    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$202(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;)Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$200(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$200(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    move-result-object v1

    # invokes: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendBGMessage()V
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->access$000(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;)V

    :cond_0
    return-void
.end method
