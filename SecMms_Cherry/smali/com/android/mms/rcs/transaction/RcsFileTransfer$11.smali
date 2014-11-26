.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;->showErorDialogOnUiThread(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

.field final synthetic val$threadMessage:Ljava/lang/String;

.field final synthetic val$threadTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iput-object p2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->val$threadTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->val$threadMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$300(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->val$threadTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->val$threadMessage:Ljava/lang/String;

    new-instance v3, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {v3, v4, v8}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V

    new-instance v4, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {v4, v5, v8}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;

    iget-object v7, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {v5, v7, v8}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$1802(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
