.class public Lcom/android/settings/powersavingmode/PowerSavingMode2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingMode2014.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private isInPowerSavingOption:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mBasicPowerSaving:Landroid/preference/PreferenceScreen;

.field private mBasicPowerSavingObserver:Landroid/database/ContentObserver;

.field private mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

.field private mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

.field private mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

.field private mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

.field private mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

.field private mEnableSettings:Landroid/preference/ListPreference;

.field private mPowerSaving2014Observer:Landroid/database/ContentObserver;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSavingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V
    .locals 0
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->updateUIPowerSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private isBackGrayAutoEnable()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_auto_turn_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "PowerSavingMode2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private updateUIPowerSaving()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const-string v2, "PowerSavingMode2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powersavingState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getEntryByValue(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # I

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const-string v2, ""

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "PowerSavingMode2014"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", basic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", black_grey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "power_saving_mode_battery"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeOneDepthArrayLinkKey()V

    :cond_0
    const v6, 0x7f0700b0

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v6, "basic_powersaving"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    const-string v6, "basic_powersaving_tablet"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    const-string v6, "data_powersaving_check"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    const-string v6, "black_grey_powersaving"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    const-string v6, "black_grey_powersaving_tablet"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    const-string v6, "enable_settings_new"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v6, "power_saving_mode_setting"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_5

    sget v6, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    if-ne v6, v5, :cond_7

    :goto_1
    const-string v6, "basic_powersaving_tablet"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    const-string v6, "black_grey_powersaving_tablet"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PowerSavingMode2014"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "enable_settings_new"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "PowerSavingMode2014"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_auto_turn_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v6}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->changeAutoEnable()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_auto_turn_on"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-ne v5, v7, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090042

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v6, "accessibility"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "isLowLevel"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "blackgrey_powersaving_mode"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "high_contrast"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "color_blind"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isBackGrayAutoEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v3, v7, :cond_3

    :cond_2
    const/4 v6, 0x1

    sget-object v7, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "powersaving_switch"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return v8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "blackgrey_powersaving_mode"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v6, 0x0

    :try_start_1
    sget-object v7, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "psm_switch"

    if-eqz v5, :cond_7

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "PowerSavingMode2014"

    const-string v7, "onPreferenceChange() - mBasicPowerSaving"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v6, v8

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v7, :cond_0

    sget v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "extra_setting_value"

    sget v8, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "extra_parent_preference_key"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-ne v7, v5, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090043

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090be9

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090859

    new-instance v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;

    invoke-direct {v7, p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09085a

    new-instance v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;

    invoke-direct {v7, p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;

    invoke-direct {v6, p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    :goto_0
    const-string v5, "PowerSavingMode2014"

    const-string v6, "onPreferenceTreeClick() - mDataPowerSavingCheck"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 14

    const v13, 0x800015

    const/16 v11, 0x10

    const/4 v12, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, "PowerSavingMode2014"

    const-string v10, "onResume() "

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iput-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Landroid/widget/Switch;

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-direct {v7, v10}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    instance-of v7, v7, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0f004c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v9, v9, v4, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v11, v12, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    :cond_0
    :goto_0
    new-instance v7, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v7, v10, v11, v9}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->updateUIPowerSaving()V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v7}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->resume()V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "powersaving_switch"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "psm_switch"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f09099c

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "blackgrey_powersaving_mode"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f09099c

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_3
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "data_powersaving_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    :goto_4
    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_auto_turn_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v7, "PowerSavingMode2014"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "curEnableValue: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "powersaving_switch"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v7, 0x7f040065

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    instance-of v7, v7, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    check-cast v5, Landroid/preference/PreferenceActivity;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v10, v12, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v7, 0x7f0b013e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    goto/16 :goto_0

    :cond_4
    const v7, 0x7f09099d

    goto/16 :goto_1

    :cond_5
    const v7, 0x7f09099d

    goto/16 :goto_2

    :cond_6
    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "psm_switch"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "psm_switch"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "blackgrey_powersaving_mode"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "blackgrey_powersaving_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3

    :cond_7
    move v7, v9

    goto :goto_5

    :cond_8
    move v7, v9

    goto :goto_6

    :cond_9
    move v8, v9

    goto/16 :goto_4
.end method

.method public onStop()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    const-string v1, "PowerSavingMode2014"

    const-string v2, "onStop() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_1
    return-void
.end method
