.class public Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;
.super Landroid/app/AlertDialog;
.source "WifiAutoNetworkSwitchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
    .param p3    # Z

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    return-void
.end method


# virtual methods
.method public WifiAutoNetworkSwitchCheckBoxChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

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
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const v8, 0x7f0b070b

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0402c6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setView(Landroid/view/View;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setInverseBackgroundForced(Z)V

    const v5, 0x7f0904ff

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setTitle(I)V

    const v5, 0x7f0b06d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v5, "USA"

    const-string v6, "KOR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f09050a

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "USA"

    const-string v6, "KOR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f09050b

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :goto_1
    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090859

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const v5, 0x7f090508

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x41a00000

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v0, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1
.end method
