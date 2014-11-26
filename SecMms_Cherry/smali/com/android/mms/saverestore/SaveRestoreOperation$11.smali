.class Lcom/android/mms/saverestore/SaveRestoreOperation$11;
.super Landroid/content/BroadcastReceiver;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iput-boolean v5, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mNoSdCard:Z

    const-string v1, "Mms/SaveRestoreOperation"

    const-string v2, "Inside mSdCardReceiver, disable the positive button now"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iput-boolean v4, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mNoSdCard:Z

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$11;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
