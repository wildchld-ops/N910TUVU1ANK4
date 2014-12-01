.class Lcom/android/mms/ui/RetryActivity$3;
.super Ljava/lang/Object;
.source "RetryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RetryActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RetryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string v0, "Mms/RetryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on ok, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    # getter for: Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/RetryActivity;->access$000(Lcom/android/mms/ui/RetryActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/transaction/SmsReceiverService;->sRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/transaction/SmsReceiverService;->sRetryCount:I

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    # getter for: Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/RetryActivity;->access$000(Lcom/android/mms/ui/RetryActivity;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    # getter for: Lcom/android/mms/ui/RetryActivity;->mError:I
    invoke-static {v3}, Lcom/android/mms/ui/RetryActivity;->access$200(Lcom/android/mms/ui/RetryActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    const-class v5, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
