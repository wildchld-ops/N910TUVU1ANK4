.class Lcom/android/mms/transaction/IMEITrackerService_DS$1;
.super Landroid/content/BroadcastReceiver;
.source "IMEITrackerService_DS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/IMEITrackerService_DS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

.field final synthetic val$IMEITrackermessage:Ljava/lang/String;

.field final synthetic val$IMEITrackerserverNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/IMEITrackerService_DS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iput-object p2, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->val$IMEITrackerserverNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->val$IMEITrackermessage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "SimID"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    invoke-virtual {v5, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_1
    const-string v5, "ITS_DS"

    const-string v6, "sendSMSPass"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    # getter for: Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim0MsgSent:Z
    invoke-static {}, Lcom/android/mms/transaction/IMEITrackerService_DS;->access$200()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    if-ne v3, v7, :cond_2

    # getter for: Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim1MsgSent:Z
    invoke-static {}, Lcom/android/mms/transaction/IMEITrackerService_DS;->access$300()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    const-string v5, "IMSInew"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c02e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v5, v5, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v5, v5, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v5, v5, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v6, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v6, v6, Lcom/android/mms/transaction/IMEITrackerService_DS;->insertedSimCardList:Ljava/util/ArrayList;

    # invokes: Lcom/android/mms/transaction/IMEITrackerService_DS;->updateRecord(Ljava/util/ArrayList;)V
    invoke-static {v5, v6}, Lcom/android/mms/transaction/IMEITrackerService_DS;->access$400(Lcom/android/mms/transaction/IMEITrackerService_DS;Ljava/util/ArrayList;)V

    if-nez v3, :cond_4

    # setter for: Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim0MsgSent:Z
    invoke-static {v7}, Lcom/android/mms/transaction/IMEITrackerService_DS;->access$202(Z)Z

    goto :goto_0

    :cond_4
    if-ne v3, v7, :cond_0

    # setter for: Lcom/android/mms/transaction/IMEITrackerService_DS;->Sim1MsgSent:Z
    invoke-static {v7}, Lcom/android/mms/transaction/IMEITrackerService_DS;->access$302(Z)Z

    goto :goto_0

    :pswitch_2
    const-string v5, "ITS_DS"

    const-string v6, "sendSMSFail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x7d0

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v3, :cond_5

    sget v2, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    :goto_2
    const/4 v5, 0x3

    if-ge v2, v5, :cond_7

    if-nez v3, :cond_6

    sget v5, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim0:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const-string v5, "ITS_DS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resending message attempt number:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v6, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->val$IMEITrackerserverNo:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$1;->val$IMEITrackermessage:Ljava/lang/String;

    # invokes: Lcom/android/mms/transaction/IMEITrackerService_DS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/mms/transaction/IMEITrackerService_DS;->access$500(Lcom/android/mms/transaction/IMEITrackerService_DS;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    sget v2, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    goto :goto_2

    :cond_6
    sget v5, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/mms/transaction/IMEITrackerService_DS;->msgSendingAttempt_Sim1:I

    goto :goto_3

    :cond_7
    const-string v5, "ITS_DS"

    const-string v6, "Number of maximum retry attempts exceeded."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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
