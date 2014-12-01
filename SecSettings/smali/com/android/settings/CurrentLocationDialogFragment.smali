.class public Lcom/android/settings/CurrentLocationDialogFragment;
.super Landroid/app/DialogFragment;
.source "CurrentLocationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string v0, "CurrentLocationDialogFragment"

    iput-object v0, p0, Lcom/android/settings/CurrentLocationDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/CurrentLocationDialogFragment;->listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;

    instance-of v0, v0, Lcom/android/settings/WeatherSettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CurrentLocationDialogFragment;->listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090db8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090db7

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0913a0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0913a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setDialogFragmentListener(Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CurrentLocationDialogFragment;->listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;

    return-void
.end method
