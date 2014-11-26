.class public Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;
.super Landroid/preference/ListPreference;
.source "PNLAutoUpdateListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/content/DialogInterface;

.field private mSuperClickedDialogEntryIndex:I

.field private mTempDialogEntryIndex:I

.field private writeFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->writeFlag:Z

    iput-object p1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->readChargesNotificationPrefrence()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;
    .param p1    # Landroid/content/DialogInterface;

    iput-object p1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    iget v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->showChargesNotificationDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->writeFlag:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->writeChargesNotificationPrefrence()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "PNLAutoUpdateListPreference"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private readChargesNotificationPrefrence()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "charges_notification_key2"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readChargesNotificationPrefrence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->log(Ljava/lang/String;)V

    return v1
.end method

.method private showChargesNotificationDialog()V
    .locals 12

    const/4 v3, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->writeFlag:Z

    const/4 v11, -0x1

    const/4 v7, -0x1

    new-instance v1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v0, "WLANOnly"

    invoke-interface {v10, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$2;-><init>(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez v8, :cond_0

    const v11, 0x7f0904d6

    const v7, 0x7f0904d5

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const v0, 0x7f09050f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/high16 v0, 0x41980000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x23

    const/16 v4, 0x19

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0902d1

    new-instance v3, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$4;-><init>(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0902d0

    new-instance v3, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$3;-><init>(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const v11, 0x7f0904db

    const v7, 0x7f0904dc

    goto :goto_0
.end method

.method private writeChargesNotificationPrefrence()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->writeFlag:Z

    if-eqz v2, :cond_0

    const-string v2, "writeChargesNotificationPrefrence true"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "charges_notification_key2"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1    # Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    new-instance v2, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;-><init>(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
