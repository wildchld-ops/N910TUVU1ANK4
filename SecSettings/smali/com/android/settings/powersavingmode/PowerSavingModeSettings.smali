.class public Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFromHelp:Z

.field private mPowerSaving:Landroid/preference/PreferenceScreen;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

.field private mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

.field private mSleepingMode:Landroid/preference/PreferenceScreen;

.field private mUltraPowerSaving:Landroid/preference/PreferenceScreen;

.field private mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    return v0
.end method

.method private showPowerSavingHelpDialog()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blackgrey_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->showPowerSavingHelpDialog()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f0700af

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v6, "fromHelp"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    const-string v6, "PowerSavingModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isFromHelp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "psm_switch"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_2
    const-string v6, "powersaving"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    const-string v6, "ultra_powersaving"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    const-string v6, "powersaving_tablet"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    const-string v6, "ultra_powersaving_tablet"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    const-string v6, "sleepingmode"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSleepingMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-direct {v6, v0, v8}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    :cond_3
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSleepingMode()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSleepingMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_6

    sget v6, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v6, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSettingValue:I

    if-ne v6, v5, :cond_8

    :goto_1
    const-string v6, "powersaving_tablet"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_8
    move v5, v7

    goto :goto_1

    :cond_9
    const-string v6, "ultra_powersaving_tablet"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f090d2d

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02016d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:appid"

    const-string v3, "power_saving_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:section"

    const-string v3, "power_saving_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string v2, "PowerSavingModeSettings"

    const-string v3, "There is no help app."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->pause()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v2, "PowerSavingModeSettings"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "flag"

    const/16 v3, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 9

    const/4 v4, 0x1

    const v3, 0x7f09099d

    const v2, 0x7f09099c

    const/4 v5, 0x0

    const-string v1, "PowerSavingModeSettings"

    const-string v6, "onResume() "

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "powersaving_switch"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "powersaving_switch"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "ultra_powersaving_mode"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSleepingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSleepingMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sleepingmode_switch_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->showPowerSavingHelpDialog()V

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->resume()V

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "ultra_powersaving_mode"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    :goto_4
    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method
