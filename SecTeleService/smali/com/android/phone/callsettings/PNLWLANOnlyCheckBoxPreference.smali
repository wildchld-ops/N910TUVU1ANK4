.class public Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "PNLWLANOnlyCheckBoxPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private writeFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->writeFlag:Z

    iput-object p1, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->writeFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->writeChargesNotificationPrefrence()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->userConfirmClick()V

    return-void
.end method

.method private readChargesNotificationPrefrence()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "charges_notification_key3"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private showChargesNotificationDialog()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->writeFlag:Z

    new-instance v1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$1;-><init>(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    const/high16 v0, 0x41980000

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTextSize(F)V

    const v0, 0x7f09050f

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v7, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0904d5

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0904d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x23

    const/16 v4, 0x19

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0902d1

    new-instance v3, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$3;-><init>(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0902d0

    new-instance v3, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$2;-><init>(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private userConfirmClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    return-void
.end method

.method private writeChargesNotificationPrefrence()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->writeFlag:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "charges_notification_key3"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    const-string v0, "support_charges_notification_in_pnl"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->readChargesNotificationPrefrence()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->showChargesNotificationDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_0
.end method
