.class Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;
.super Ljava/lang/Thread;
.source "MessageBackgroundSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendBGMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1100(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    # setter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1002(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Lcom/google/android/mms/pdu/PduPersister;)Lcom/google/android/mms/pdu/PduPersister;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1000(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->initMmsComponents()Z
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1200(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendMessage()V
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1300(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v1, v1, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$800(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v2, v2, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$800(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I
    invoke-static {v4}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1400(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I
    invoke-static {v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1500(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
