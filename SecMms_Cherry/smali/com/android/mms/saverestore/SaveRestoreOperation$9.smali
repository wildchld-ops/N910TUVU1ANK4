.class Lcom/android/mms/saverestore/SaveRestoreOperation$9;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

.field final synthetic val$ids:[J


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;[J)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iput-object p2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->val$ids:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "Mms/SaveRestoreOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file name to save is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v3, v3, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v2, v2, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/mms/saverestore/SaveRestoreOperation;->fileAlreadyExists(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1200(Lcom/android/mms/saverestore/SaveRestoreOperation;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->val$ids:[J

    iget-object v4, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z
    invoke-static {v4}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, v1, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$9;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0389

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
