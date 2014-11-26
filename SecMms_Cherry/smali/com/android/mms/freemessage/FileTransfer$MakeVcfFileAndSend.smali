.class Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;
.super Landroid/os/AsyncTask;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/freemessage/FileTransfer;
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

.field final synthetic this$0:Lcom/android/mms/freemessage/FileTransfer;


# direct methods
.method private constructor <init>(Lcom/android/mms/freemessage/FileTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/android/mms/freemessage/FileTransfer$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/freemessage/FileTransfer;
    .param p2    # Lcom/android/mms/freemessage/FileTransfer$1;

    invoke-direct {p0, p1}, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->doInBackground([Landroid/net/Uri;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)[B
    .locals 5
    .param p1    # [Landroid/net/Uri;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    aget-object v3, p1, v0

    # invokes: Lcom/android/mms/freemessage/FileTransfer;->createAndWriteContacts(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/mms/freemessage/FileTransfer;->access$400(Lcom/android/mms/freemessage/FileTransfer;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Mms/FileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VCARD_SELECTED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "TransferContentActivity.createAndWriteContacts returned with null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1    # [B

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$700()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$700()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$700()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Preparing for content sharing..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
