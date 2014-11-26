.class public Lcom/android/settings/SEAndroidSettings;
.super Landroid/preference/PreferenceFragment;
.source "SEAndroidSettings.java"


# instance fields
.field private mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private saveEnforcing()V
    .locals 3

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "selinux_enforcing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0700c4

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "selinux_enforcing"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    iget-object v1, p0, Lcom/android/settings/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/SEAndroidSettings;->saveEnforcing()V

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
