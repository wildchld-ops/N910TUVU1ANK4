.class Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;
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

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendSmsMessage()V
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$900(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
