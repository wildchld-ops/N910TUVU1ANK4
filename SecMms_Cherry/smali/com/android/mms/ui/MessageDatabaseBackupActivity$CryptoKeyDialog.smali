.class public Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;
.super Landroid/app/DialogFragment;
.source "MessageDatabaseBackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CryptoKeyDialog"
.end annotation


# instance fields
.field private mEditField:Landroid/widget/EditText;

.field private mParentContext:Landroid/content/Context;

.field private mWorkingMode:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private hideInputMethod()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private setCryptoKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mParentContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->setCryptoKey(Ljava/lang/String;)V

    return-void
.end method

.method private setupDialogView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040043

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/mms/util/LengthFilterWithToast;

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->INPUT_CRYPTO_KEY_LENGTH:I
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$700()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    const v3, 0x7f0c058d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->setCryptoKey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->hideInputMethod()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const v4, 0x7f0c058d

    const/4 v3, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->setCryptoKey(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->hideInputMethod()V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->INPUT_CRYPTO_KEY_LENGTH:I
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$700()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->setCryptoKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->setCryptoKey(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mWorkingMode:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mParentContext:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    # invokes: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->startBackup()V
    invoke-static {v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$800(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mWorkingMode:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mParentContext:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    # invokes: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->startRestore()V
    invoke-static {v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$900(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ERROR : The working mode is not existed"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->setCryptoKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->setupDialogView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c058b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog$1;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->INPUT_CRYPTO_KEY_LENGTH:I
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$700()I

    move-result v4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setData(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mParentContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->mWorkingMode:I

    return-void
.end method
