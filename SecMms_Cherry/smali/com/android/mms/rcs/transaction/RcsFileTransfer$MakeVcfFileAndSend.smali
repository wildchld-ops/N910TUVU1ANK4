.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;
.super Landroid/os/AsyncTask;
.source "RcsFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeVcfFileAndSend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->doInBackground([Landroid/net/Uri;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)[B
    .locals 4

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # invokes: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->createAndWriteContacts([Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$800(Lcom/android/mms/rcs/transaction/RcsFileTransfer;[Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Mms/FileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VCARD_SELECTED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "TransferContentActivity.createAndWriteContacts returned with null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$300(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/rcs/transaction/Utils;->getPathsFromUris(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$102(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$900()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$900()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$900()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$300(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Preparing for content sharing..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
