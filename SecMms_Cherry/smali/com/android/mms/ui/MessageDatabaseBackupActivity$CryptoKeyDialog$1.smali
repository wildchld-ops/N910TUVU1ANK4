.class Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog$1;
.super Ljava/lang/Object;
.source "MessageDatabaseBackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog$1;->this$1:Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog$1;->this$1:Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
