.class public Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AutoReplacementSettingsFragment.java"


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsShowDialogByHomeKey:Z

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private misTablet:Z

.field onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    new-instance v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;-><init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$2;-><init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;Z)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->createLanguageList(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    return p1
.end method

.method private areAllLanguagesDisable()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v6, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v5, v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private createLanguageList(Z)V
    .locals 18
    .param p1    # Z

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const/4 v9, 0x0

    new-instance v1, Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v1, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Sip_ApplyAutoCorrectionPatent"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x7f0e020b

    invoke-virtual {v1, v14}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1
    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const/4 v4, 0x0

    :goto_2
    array-length v14, v13

    if-ge v4, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-nez v14, :cond_3

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    goto :goto_0

    :cond_2
    const v14, 0x7f0e020a

    invoke-virtual {v1, v14}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ja"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "zh"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "0x%08x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v13, v4

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v7, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v15, v13, v4

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_4
    if-eqz v9, :cond_4

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    new-instance v9, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x1

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_0

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_7
    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14, v10}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    if-nez v9, :cond_8

    new-instance v9, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_5
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14, v3}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    if-nez v9, :cond_9

    new-instance v9, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x1

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x1

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_5
.end method


# virtual methods
.method protected exitAutoRelacementSettings()V
    .locals 4

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->areAllLanguagesDisable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v3, 0x7f0f0000

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0209

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e020c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0116

    new-instance v2, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;-><init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$4;-><init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected isShowDialogByHomeKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/16 v9, 0x400

    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "[ARS] onCreate() - mInputManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "TABLET_MODE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    :cond_2
    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v4, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v3, 0x7f030059

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v3, 0x7f0e0209

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->createLanguageList(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f030080

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->exitAutoRelacementSettings()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method protected setShowDialogByHomeKey(Z)Z
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    return p1
.end method
