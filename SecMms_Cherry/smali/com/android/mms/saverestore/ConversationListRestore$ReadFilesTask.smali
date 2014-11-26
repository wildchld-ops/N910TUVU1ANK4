.class Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;
.super Landroid/os/AsyncTask;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSelectedIndex:I

.field final synthetic this$0:Lcom/android/mms/saverestore/ConversationListRestore;


# direct methods
.method private constructor <init>(Lcom/android/mms/saverestore/ConversationListRestore;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mSelectedIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/saverestore/ConversationListRestore;Lcom/android/mms/saverestore/ConversationListRestore$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/saverestore/ConversationListRestore;
    .param p2    # Lcom/android/mms/saverestore/ConversationListRestore$1;

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;-><init>(Lcom/android/mms/saverestore/ConversationListRestore;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1    # [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/saverestore/ConversationListRestore;->newArrayFromSelection(Z)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->array:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1002(Lcom/android/mms/saverestore/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->array:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1000(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    const-string v0, "Mms/ConversationListRestore"

    const-string v1, "ReadFilesTask onCancelled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$300(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->OnDestroy()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;

    const-string v0, "Mms/ConversationListRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$300(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1000(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->startRestoreOperation(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$300(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # invokes: Lcom/android/mms/saverestore/ConversationListRestore;->getIds()[J
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$200(Lcom/android/mms/saverestore/ConversationListRestore;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->checkForDuplicates([J)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0187

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
