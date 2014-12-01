.class public Lcom/android/phone/FlatRateAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field protected static mCheckBox:Landroid/view/View;

.field protected static mRadioGroup:Landroid/widget/RadioGroup;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mFlatRateDialog:Landroid/app/AlertDialog$Builder;

.field private radioOption1:Landroid/widget/RadioButton;

.field private salesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->salesCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FlatRateAlertActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/FlatRateAlertActivity;

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/FlatRateAlertActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0    # Lcom/android/phone/FlatRateAlertActivity;

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1    # Landroid/widget/RadioGroup;
    .param p2    # I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v9}, Lcom/android/phone/FlatRateAlertActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f100048

    invoke-direct {v0, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f04003f

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a00fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v5, "bootup_data_tariff_rate_popup"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f09051f

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f090520

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a00ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    sput-object v5, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v5, 0x7f0a0100

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    sget-object v5, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    sget-object v5, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mFlatRateDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mFlatRateDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090025

    new-instance v7, Lcom/android/phone/FlatRateAlertActivity$1;

    invoke-direct {v7, p0}, Lcom/android/phone/FlatRateAlertActivity$1;-><init>(Lcom/android/phone/FlatRateAlertActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mFlatRateDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v5, 0x7f09051b

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f09051c

    new-array v6, v9, [Ljava/lang/Object;

    const v7, 0x7f09051d

    invoke-virtual {p0, v7}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/FlatRateAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a00fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/view/View;

    sget-object v5, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v5, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/view/View;

    check-cast v5, Landroid/widget/Checkable;

    invoke-interface {v5, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
