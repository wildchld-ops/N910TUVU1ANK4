.class public Lcom/android/mms/ui/MessageDetailsFragment;
.super Landroid/app/DialogFragment;
.source "MessageDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(JZ)Lcom/android/mms/ui/MessageDetailsFragment;
    .locals 3
    .param p0    # J
    .param p2    # Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msgId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "isSpam"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/mms/ui/MessageDetailsFragment;

    invoke-direct {v1}, Lcom/android/mms/ui/MessageDetailsFragment;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    iput-object p1, p0, Lcom/android/mms/ui/MessageDetailsFragment;->mCallbacks:Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailsFragment;->mCallbacks:Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailsFragment;->mCallbacks:Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailsFragment;->mCallbacks:Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;->onDialogCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailsFragment;->mCallbacks:Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailsFragment;->mCallbacks:Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/mms/ui/MessageDetailsFragment$Callbacks;->onDialogClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msgId"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "isSpam"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageNotificationDetails(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c007e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v5, 0x104000a

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
