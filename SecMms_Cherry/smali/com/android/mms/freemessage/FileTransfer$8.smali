.class Lcom/android/mms/freemessage/FileTransfer$8;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FileTransfer;->showVideoResizingDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FileTransfer;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FileTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$8;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$8;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$2000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$8;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    invoke-virtual {v0}, Lcom/android/mms/freemessage/FileTransfer;->newImageFileBackupAsyncTask()V

    return-void
.end method
