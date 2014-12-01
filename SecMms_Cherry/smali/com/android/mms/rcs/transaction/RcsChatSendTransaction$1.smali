.class Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;
.super Landroid/os/Handler;
.source "RcsChatSendTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v0, "Mms/RcsChatSendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RcsChatSendTransaction] msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "[RcsChatSendTransaction] msg.what is default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "[RcsChatSendTransaction] sending timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "status"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "display_notification_status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    iget-object v1, v1, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    invoke-virtual {v2}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "update failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "time out, update failed notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "im-transaction-done"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    invoke-virtual {v1}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    # getter for: Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->access$100(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;

    # getter for: Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->mResponseReceiver:Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;->access$200(Lcom/android/mms/rcs/transaction/RcsChatSendTransaction;)Lcom/android/mms/rcs/transaction/RcsChatSendTransaction$ResponseReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v0, "Mms/RcsChatSendTransaction"

    const-string v1, "unregister called twice!!!! ignore event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
