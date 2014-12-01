.class public Lcom/android/settings/wifi/WifiHiddenApAddDialog;
.super Landroid/app/AlertDialog;
.source "WifiHiddenApAddDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSsid:Landroid/widget/EditText;

.field private mTempSsid:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const v0, 0x7f100046

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;-><init>(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->ssidWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiHiddenApAddDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiHiddenApAddDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->validate()V

    return-void
.end method

.method private validate()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0402a8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    new-instance v0, Lcom/android/settings/Utils$LengthFilter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0658

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f09052a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f09052b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->validate()V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
