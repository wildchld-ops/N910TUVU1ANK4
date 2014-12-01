.class final Lcom/android/mms/transaction/MessagingNotification$8;
.super Landroid/os/AsyncTask;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->nonBlockUpdateDownloadFailedNotification(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$8;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$1600(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateDownloadFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$8;->val$context:Landroid/content/Context;

    const/16 v1, 0x213

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessagingNotification$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
