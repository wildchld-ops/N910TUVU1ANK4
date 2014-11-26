.class Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;
.super Ljava/lang/Object;
.source "MessageBackgroundSenderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendSmsMessage()V
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

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1600(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1700(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1100(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1700(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)[Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    invoke-static {v3, v4, v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1800(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I
    invoke-static {v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1400(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    # getter for: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I
    invoke-static {v6}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1500(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I

    move-result v6

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendSmsWorker(Ljava/lang/String;[Ljava/lang/String;JII)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$1900(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Ljava/lang/String;[Ljava/lang/String;JII)V

    return-void
.end method
