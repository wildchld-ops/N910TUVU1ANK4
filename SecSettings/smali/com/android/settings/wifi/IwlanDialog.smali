.class public Lcom/android/settings/wifi/IwlanDialog;
.super Landroid/app/AlertDialog;
.source "IwlanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final FORMAT_IP_ADDRESS_EDIT:Ljava/lang/String;

.field final edit:Z

.field private mContext:Landroid/content/Context;

.field private mIsValid:Z

.field private final mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

.field private mPdgAddress:Landroid/widget/TextView;

.field private mPdgName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/IwlanDialog;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "^[0-9.]*$"

    iput-object v0, p0, Lcom/android/settings/wifi/IwlanDialog;->FORMAT_IP_ADDRESS_EDIT:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    iput-boolean p3, p0, Lcom/android/settings/wifi/IwlanDialog;->edit:Z

    iput-object p2, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    iput-object p1, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040121

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b02e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isIPv4Address(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/settings/wifi/IwlanDialog;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f09141f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNameValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f09141c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-lt v1, v3, :cond_2

    const/16 v3, 0x7a

    if-le v1, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v1, v3, :cond_3

    const/16 v3, 0x5a

    if-le v1, v3, :cond_5

    :cond_3
    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-le v1, v3, :cond_5

    :cond_4
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f09141d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f091425

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/IwlanDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/IwlanDialog$2;-><init>(Lcom/android/settings/wifi/IwlanDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
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

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x3

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_DELETE_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra.IWLAN_PDG_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/IwlanDialog;->isNameValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/IwlanDialog;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_SAVE_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra.IWLAN_PDG_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra.IWLAN_PDG_ADDRESS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_DISCONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_CONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra.IWLAN_PDG_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra.IWLAN_CONNECT_FROM_DIALOG"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040120

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v11}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-nez v5, :cond_0

    const v5, 0x7f091411

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b02de

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b02df

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgName:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b02e0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    new-array v0, v11, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/wifi/IwlanDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/IwlanDialog$1;-><init>(Lcom/android/settings/wifi/IwlanDialog;)V

    aput-object v2, v0, v9

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f091423

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v5, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f091424

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v6}, Lcom/android/settings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f09140f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b02dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const v5, 0x7f091419

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/wifi/IwlanDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgIpAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const v5, 0x7f09141a

    invoke-direct {p0, v1, v5, v3}, Lcom/android/settings/wifi/IwlanDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f091421

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v5, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f091425

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f091420

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v5, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v5, -0x3

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f091422

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v1}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v2}, Lcom/android/settings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v1}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
