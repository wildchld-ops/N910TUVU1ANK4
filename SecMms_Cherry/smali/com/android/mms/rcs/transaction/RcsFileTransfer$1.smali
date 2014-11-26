.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;->ImageResize(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

.field final synthetic val$resizableCount:I

.field final synthetic val$resizableIdx:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iput p2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->val$resizableCount:I

    iput-object p3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->val$resizableIdx:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->val$resizableCount:I

    if-ge v2, v11, :cond_1

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->val$resizableIdx:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v11, 0x1

    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # invokes: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getResizedImageUri(Ljava/lang/String;II)Landroid/net/Uri;
    invoke-static {v11, v0, v10, v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$200(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v11, "Mms/FileTransfer"

    const-string v12, "sendFiles, files resized"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/mms/rcs/transaction/ImageRedirection;

    iget-object v12, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$300(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mThreadId:J
    invoke-static {v13}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$400(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)J

    move-result-wide v13

    invoke-direct {v11, v12, v13, v14}, Lcom/android/mms/rcs/transaction/ImageRedirection;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v11, v8}, Lcom/android/mms/rcs/transaction/ImageRedirection;->redirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Mms/FileTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "replace path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Mms/FileTransfer"

    const-string v12, "newImageFilesBackupAsyncTask#onPostExecute: Try to launch validateFiles()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # invokes: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->validateImageFile(Ljava/lang/String;)V
    invoke-static {v11, v8}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$500(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->cleanUpTempDirectory()Z

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # invokes: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->validateFiles()V
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$600(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$700(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$700(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$700(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    const/4 v12, 0x0

    # setter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11, v12}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$702(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_4
    return-void
.end method
