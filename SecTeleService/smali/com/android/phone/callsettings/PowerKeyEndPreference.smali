.class public Lcom/android/phone/callsettings/PowerKeyEndPreference;
.super Landroid/preference/CheckBoxPreference;
.source "PowerKeyEndPreference.java"


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSumary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSumary()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/PowerKeyEndPreference;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PowerKeyEndPreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkProximitySeonsor(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->isChecked()Z

    move-result v1

    iput-object p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "proximity_sensor"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->isChecked()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090317

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090318

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902d0

    new-instance v4, Lcom/android/phone/callsettings/PowerKeyEndPreference$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$3;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902d1

    new-instance v4, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    const-string v4, "com.android.phone"

    const-string v5, "POWR"

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eqz v2, :cond_4

    const-string v2, "on"

    :goto_1
    invoke-static {v3, v4, v5, v2}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v5, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->isChecked()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v4, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->isChecked()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string v2, "off"

    goto :goto_1
.end method

.method public setSumary()V
    .locals 0

    return-void
.end method
