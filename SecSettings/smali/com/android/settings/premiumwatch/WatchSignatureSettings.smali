.class public Lcom/android/settings/premiumwatch/WatchSignatureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WatchSignatureSettings.java"

# interfaces
.implements Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;


# instance fields
.field private mDisplaySignature:Landroid/preference/CheckBoxPreference;

.field private mEditSignature:Landroid/preference/Preference;

.field private mPremiumWatchEditSignature:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040277

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "display_signature_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mDisplaySignature:Landroid/preference/CheckBoxPreference;

    const-string v0, "edit_signature_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mEditSignature:Landroid/preference/Preference;

    return-void
.end method

.method public onPositiveClick()V
    .locals 0

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mDisplaySignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "premium_watch_display_signature"

    iget-object v6, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mDisplaySignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mEditSignature:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->showDialog()V

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method showDialog()V
    .locals 3

    const v0, 0x7f0919d4

    invoke-static {v0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->newInstance(I)Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mPremiumWatchEditSignature:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mPremiumWatchEditSignature:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-virtual {v0, p0}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->setConfirmationDialogFragmentListener(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$ConfirmationDialogFragmentListener;)V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchSignatureSettings;->mPremiumWatchEditSignature:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
