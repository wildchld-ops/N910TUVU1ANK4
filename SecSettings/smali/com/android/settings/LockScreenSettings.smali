.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isMyprofile:I

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mClockMyprofile:Landroid/preference/PreferenceScreen;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mClockWeather:Landroid/preference/PreferenceScreen;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEditClock:Landroid/preference/PreferenceScreen;

.field private mFavappCameraWidget:Landroid/preference/PreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyprofile:Landroid/preference/PreferenceScreen;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mPersonalmessage:Landroid/preference/Preference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSearchMenuOpen:Z

.field private mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

.field private mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

.field private option:Ljava/lang/String;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    iput-boolean v0, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v1, 0x7f07007a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    const v1, 0x7f07007b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateClockSizeSummary()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateState()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dualclock_menu_settings"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lock_screen_clock_size"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "LockScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClockSizeValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "unlock_text"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wake_up_lock_screen"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09150e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "my_profile_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091189

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f091519

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    :cond_8
    :goto_5
    return-void

    :cond_9
    move v1, v3

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto :goto_1

    :cond_b
    move v1, v3

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09150d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d90

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f091518

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_5
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "personal_message_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "multiple_widget_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "LockScreenSettings"

    const-string v1, "configuration changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_option_category"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "personal_message_category"

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "personal_message_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "multiple_widget_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "clock_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f091518

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_4
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "personal_message_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f091189

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "multiple_widget_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f091502

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "LockScreenSettings"

    const-string v1, "onPause(), dismiss mClockSize dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v6, "dualclock_settings"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    :goto_0
    const-string v6, "oversea"

    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f091185

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f09180d

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/LockScreenSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/LockScreenSettings$3;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    const-string v6, "lock_screen_profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "my_profile_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    const-string v6, "lock_screen_short_or_camera_widget"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kg_enable_camera_widget"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v9, :cond_0

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v9, v7, :cond_3

    move v0, v7

    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "unlock_text"

    iget-object v11, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_1
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :cond_2
    :goto_3
    return v7

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wake_up_lock_screen"

    iget-object v11, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_6

    :goto_4
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_4

    :cond_7
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.settings.ShortCameraMenu"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_8
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.settings.ShortCameraMenu"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_9
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.settings.ClockMyprofileMenuTablet"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.settings.ClockMyprofileMenu"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEditClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_date_and_year"

    iget-object v11, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_c

    :goto_5
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_c
    move v7, v8

    goto :goto_5

    :cond_d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "dialog"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/OwnerInfoSettings;

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Landroid/app/Fragment;->isAdded()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_e
    const v7, 0x7f0901ee

    invoke-static {v7}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v5, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "oversea"

    const-string v10, "ril.currentplmn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f091185

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f09180d

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_27

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v9

    if-nez v9, :cond_27

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "u0lte"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v9, "lock_screen_clock_or_myprofile"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    const-string v9, "lock_screen_widget_options_category"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_2d

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f091519

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(I)V

    :cond_3
    :goto_2
    const-string v9, "lock_screen_profile"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-nez v9, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v9, "clock_size"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_2e

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_3
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "my_profile_enabled"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2f

    move v9, v10

    :goto_4
    invoke-virtual {v12, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v9, "lock_screen_date_and_year"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_5

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "lock_screen_date_and_year"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_30

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    const-string v9, "clock_weather"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isH_Device()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const-string v9, "owner_info_settings"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_31

    move v3, v10

    :goto_6
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_9

    if-nez v3, :cond_9

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0901f4

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(I)V

    :cond_9
    const-string v9, "dualclock_settings"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v9, "LockScreenSettings"

    const-string v12, " remove Dualclock menu"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v9, "help_text"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    const-string v9, "say_your_wakeup"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f091553

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_d
    const-string v9, "set_wakeup_command"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v9, "feature_category"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v9

    if-eqz v9, :cond_32

    move v6, v10

    :cond_f
    :goto_7
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_11
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "LockScreenSettings"

    const-string v12, "onResume(): isLockScreenEnabled = false"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v9

    if-eqz v9, :cond_25

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_33

    move v5, v10

    :cond_13
    :goto_8
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_34

    move v5, v10

    :cond_14
    :goto_9
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_15
    const-string v9, "lock_screen_favapp_or_camera_widget"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_16
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_enable_camera_widget_type"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09150e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_18

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_18
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_19

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_19
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1a

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1b

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_1c

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1d

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1e

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1f

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1f
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_20

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_20
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_21

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_21
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_22

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_22
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "clock_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_23

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_24

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_24
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_25

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_25
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    iput-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    if-eqz v9, :cond_26

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_26

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v9, "extra_parent_preference_key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v9, v10, :cond_36

    move v8, v10

    :goto_b
    const-string v9, "dualclock_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    :cond_26
    :goto_c
    iget-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    return-void

    :cond_27
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v13, "kg_enable_camera_widget"

    invoke-static {v9, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_28

    move v9, v10

    :goto_d
    invoke-virtual {v12, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_29

    move v1, v10

    :goto_e
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "is_secured_lock"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2a

    move v2, v10

    :goto_f
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_2b

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_2b

    move v9, v10

    :goto_10
    invoke-virtual {v12, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_28
    move v9, v11

    goto :goto_d

    :cond_29
    move v1, v11

    goto :goto_e

    :cond_2a
    move v2, v11

    goto :goto_f

    :cond_2b
    move v9, v11

    goto :goto_10

    :cond_2c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_2d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f091518

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_2

    :cond_2e
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_2f
    move v9, v11

    goto/16 :goto_4

    :cond_30
    move v9, v11

    goto/16 :goto_5

    :cond_31
    move v3, v11

    goto/16 :goto_6

    :cond_32
    move v6, v11

    goto/16 :goto_7

    :cond_33
    move v5, v11

    goto/16 :goto_8

    :cond_34
    move v5, v11

    goto/16 :goto_9

    :cond_35
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09150d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_36
    move v8, v11

    goto/16 :goto_b

    :cond_37
    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    goto/16 :goto_c
.end method
