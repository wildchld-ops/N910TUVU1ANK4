.class Lcom/android/mms/freemessage/FileTransfer$5;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FileTransfer;->showVideoResizingProgressDialog()V
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

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$5;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$5;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/freemessage/FileTransfer;->access$1402(Lcom/android/mms/freemessage/FileTransfer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
