.class public Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;
.super Landroid/app/DialogFragment;
.source "MmsPartExportDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/export/MmsPartExportDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameDialog"
.end annotation


# static fields
.field private static final MAX_FILENAME_LENGTH:I = 0x32


# instance fields
.field private mEditField:Landroid/widget/EditText;

.field private mExtension:Ljava/lang/String;

.field private mOrigName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->hideInputMethod()V

    return-void
.end method

.method private extractFileName()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, ""

    iput-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iput-object v1, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    goto :goto_0
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

    iget-object v1, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Landroid/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;

    invoke-direct {v0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private notifyActivity()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/export/MmsPartExportDialogActivity;

    # invokes: Lcom/android/mms/export/MmsPartExportDialogActivity;->nextIntent()V
    invoke-static {v0}, Lcom/android/mms/export/MmsPartExportDialogActivity;->access$100(Lcom/android/mms/export/MmsPartExportDialogActivity;)V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method private setupDialogView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x32

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04008d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b031b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/mms/export/MmsPartExportDialogActivity$InvalidFilenameCharacterFilter;

    invoke-direct {v2}, Lcom/android/mms/export/MmsPartExportDialogActivity$InvalidFilenameCharacterFilter;-><init>()V

    aput-object v2, v0, v5

    const/4 v2, 0x1

    new-instance v3, Lcom/android/mms/util/LengthFilterWithToast;

    invoke-direct {v3, v6}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    const-string v3, "inputType=PredictionOff;inputType=filename;disableEmoticonInput=true"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog$1;

    invoke-direct {v3, p0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog$1;-><init>(Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-static {v2, v6}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

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
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->notifyActivity()V

    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->hideInputMethod()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "msg_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "part_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/android/mms/export/MmsPartExport;->queueSaveRequest(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->notifyActivity()V

    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->hideInputMethod()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->extractFileName()V

    invoke-direct {p0, p1}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->setupDialogView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c013f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->requestInputMethod(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
