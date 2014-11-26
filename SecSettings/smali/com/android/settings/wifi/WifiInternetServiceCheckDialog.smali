.class public Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;
.super Landroid/app/AlertDialog;
.source "WifiInternetServiceCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private final mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public WifiInternetServiceCheckBoxChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    .param p2    # Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->playSoundEffect(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0402ac

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setInverseBackgroundForced(Z)V

    const v1, 0x7f0904ff

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setTitle(I)V

    const v1, 0x7f0b06d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090859

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09052b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
