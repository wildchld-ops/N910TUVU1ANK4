.class Lcom/android/mms/freemessage/FileTransfer$1;
.super Landroid/os/AsyncTask;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FileTransfer;->newImageFileBackupAsyncTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FileTransfer;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FileTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/freemessage/FileTransfer$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    new-instance v1, Lcom/android/mms/freemessage/ImageRedirection;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$600()Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mThreadId:J
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$800()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/freemessage/ImageRedirection;-><init>(Landroid/content/Context;JLjava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/android/mms/freemessage/ImageRedirection;->redirection()Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/freemessage/FileTransfer;->access$502(Lcom/android/mms/freemessage/FileTransfer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return-object v6
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1100(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/freemessage/FileTransfer$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->cleanUpTempDirectory()Z

    const-string v0, "Mms/FileTransfer"

    const-string v1, "newImageFilesBackupAsyncTask#onPostExecute: Try to launch validateFiles()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # invokes: Lcom/android/mms/freemessage/FileTransfer;->validateFiles()V
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$900(Lcom/android/mms/freemessage/FileTransfer;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->recipients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1200(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    new-instance v1, Landroid/app/ProgressDialog;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/freemessage/FileTransfer;->access$1002(Lcom/android/mms/freemessage/FileTransfer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$600()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$1;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
