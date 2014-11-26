.class public Lcom/android/settings/DeviceNameSettings;
.super Landroid/app/DialogFragment;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mMaxToast:Landroid/widget/Toast;

.field private mTempName:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceNameSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/settings/DeviceNameSettings;

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/DeviceNameSettings;

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/DeviceNameSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/settings/DeviceNameSettings;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/settings/DeviceNameSettings;

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Lcom/android/settings/DeviceNameSettings;

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mMaxToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/DeviceNameSettings;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0    # Lcom/android/settings/DeviceNameSettings;
    .param p1    # Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings;->mMaxToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    const v5, 0x7f0b0192

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings/DeviceNameSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceNameSettings$2;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    const-string v5, "disableAutoReplacement=true"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    const-string v5, "disableEmoticonInput=true"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "maxLength"

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/settings/DeviceNameSettings;->showInputMethod()V

    return-void

    :catch_0
    move-exception v2

    const-string v4, "DeviceNameSettings"

    const-string v5, "Caught Exception setSelection"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static newInstance(I)Lcom/android/settings/DeviceNameSettings;
    .locals 3
    .param p0    # I

    new-instance v1, Lcom/android/settings/DeviceNameSettings;

    invoke-direct {v1}, Lcom/android/settings/DeviceNameSettings;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$3;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$4;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->saveToDb()V

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceNameSettings;->initView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

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

    iput-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$1;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const-string v1, "DeviceNameSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

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
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DeviceNameSettings;->showInputMethod()V

    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$5;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method saveToDb()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;)V
    .locals 0
    .param p1    # Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    return-void
.end method
