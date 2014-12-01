.class public Lcom/android/settings/wifi/PrioritySettingDialog;
.super Landroid/app/AlertDialog;
.source "PrioritySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mContext:Landroid/content/Context;

.field private mPriorityButton:I

.field private mPriorityView:Landroid/view/ViewGroup;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSecurity:I

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field orderedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSecurity:I

    return-void

    :cond_0
    iget v0, p2, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/PrioritySettingDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v6, v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    return-object v4
.end method

.method static resortOrderedConfigs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validatePriorityButtons()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-ne v1, v6, :cond_2

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
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

.method public cancel()V
    .locals 2

    const-string v0, "WifiPriorityDialog"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    return-void
.end method

.method protected cancelOrDismiss(Z)V
    .locals 3

    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOrDismiss isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPriorityButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    return-void

    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    const-string v0, "WifiPriorityDialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged checkedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, -0x1

    const-string v6, "WifiPriorityDialog"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ne p2, v8, :cond_2

    const/4 v6, 0x1

    if-lt v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    :cond_2
    const/4 v6, -0x3

    if-ne p2, v6, :cond_3

    add-int/lit8 v6, v5, -0x2

    if-gt v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    :cond_3
    const/4 v6, -0x2

    if-ne p2, v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04029f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v2, "WifiPriorityDialog"

    const-string v3, "PrioritySettingDialog onCreate null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0402a1

    iget-object v4, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b06c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v2, 0x7f091319

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(I)V

    new-instance v2, Lcom/android/settings/wifi/PrioritySettingDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/PrioritySettingDialog$1;-><init>(Lcom/android/settings/wifi/PrioritySettingDialog;)V

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b06c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    if-nez v2, :cond_0

    const-string v2, "WifiPriorityDialog"

    const-string v3, "mRadioGroup is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, -0x1

    const v3, 0x7f091316

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x3

    const v3, 0x7f091317

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x2

    const v3, 0x7f091318

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/android/settings/wifi/PrioritySettingDialog;->getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    iput v5, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateRadioGroup(I)V
    .locals 9

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    if-eqz v6, :cond_1

    const-string v6, "WifiPriorityDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRadioGroup add ordered configurations. number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0402be

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6, v5, v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup current ssid:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p1}, Landroid/widget/RadioGroup;->check(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    :goto_1
    return-void

    :cond_1
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup orderedConfigs is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
