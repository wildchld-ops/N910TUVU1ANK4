.class public Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;
.super Landroid/app/DialogFragment;
.source "PremiumWatchEditSignature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "premiumwatch_signature_str"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mView:Landroid/view/View;

    const v4, 0x7f0b0612

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$2;

    invoke-direct {v4, p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$2;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->showInputMethod()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "PremiumWatchEditSignature"

    const-string v4, "Caught Exception setSelection"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static newInstance(I)Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;
    .locals 3

    new-instance v1, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-direct {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$3;

    invoke-direct {v1, p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$3;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$4;

    invoke-direct {v1, p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$4;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->listener:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->saveToDb()V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->listener:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040276

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->initView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;

    invoke-direct {v1, p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const-string v1, "PremiumWatchEditSignature"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->showInputMethod()V

    return-void
.end method

.method saveToDb()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "premiumwatch_signature_str"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->listener:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;

    return-void
.end method
