.class Lcom/android/mms/freemessage/FileTransfer$10;
.super Landroid/os/Handler;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/freemessage/FileTransfer;
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

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$10;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$10;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1400(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$10;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1400(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$10;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    invoke-virtual {v0}, Lcom/android/mms/freemessage/FileTransfer;->newImageFileBackupAsyncTask()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
