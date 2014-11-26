.class Lcom/android/mms/transaction/RetryScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "RetryScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/RetryScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/RetryScheduler;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/RetryScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler$1;->this$0:Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler$1;->this$0:Lcom/android/mms/transaction/RetryScheduler;

    const-string v2, "IMS_REG_STATUS"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z
    invoke-static {v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->access$002(Lcom/android/mms/transaction/RetryScheduler;Z)Z

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler$1;->this$0:Lcom/android/mms/transaction/RetryScheduler;

    # getter for: Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z
    invoke-static {v1}, Lcom/android/mms/transaction/RetryScheduler;->access$000(Lcom/android/mms/transaction/RetryScheduler;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.SmsReceiverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "LastSentMsg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler$1;->this$0:Lcom/android/mms/transaction/RetryScheduler;

    # getter for: Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/transaction/RetryScheduler;->access$100(Lcom/android/mms/transaction/RetryScheduler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
