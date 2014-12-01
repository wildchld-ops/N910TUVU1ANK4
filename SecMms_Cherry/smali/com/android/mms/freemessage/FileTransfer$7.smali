.class Lcom/android/mms/freemessage/FileTransfer$7;
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

.field final synthetic val$fileName:Ljava/util/ArrayList;

.field final synthetic val$filePath:Ljava/util/ArrayList;

.field final synthetic val$index:Ljava/util/ArrayList;

.field final synthetic val$obj:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FileTransfer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$7;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    iput-object p2, p0, Lcom/android/mms/freemessage/FileTransfer$7;->val$index:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/freemessage/FileTransfer$7;->val$obj:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/freemessage/FileTransfer$7;->val$fileName:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/mms/freemessage/FileTransfer$7;->val$filePath:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$7;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # invokes: Lcom/android/mms/freemessage/FileTransfer;->showVideoResizingProgressDialog()V
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1500(Lcom/android/mms/freemessage/FileTransfer;)V

    new-instance v0, Lcom/android/mms/freemessage/FileTransfer$7$1;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FileTransfer$7$1;-><init>(Lcom/android/mms/freemessage/FileTransfer$7;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
