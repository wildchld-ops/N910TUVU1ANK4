.class public Lcom/diotek/ime/implement/setting/HwrSettings;
.super Landroid/preference/PreferenceActivity;
.source "HwrSettings.java"


# instance fields
.field private final OPTION_MENU_BACK:I

.field hwrRecogTimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field hwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mHwrRecogTime:Landroid/preference/ListPreference;

.field private mHwrRecogType:Landroid/preference/ListPreference;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsKeypadGuideInHelpApp:Z

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->mIsKeypadGuideInHelpApp:Z

    iput v0, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->OPTION_MENU_BACK:I

    new-instance v0, Lcom/diotek/ime/implement/setting/HwrSettings$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/HwrSettings$1;-><init>(Lcom/diotek/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->hwrRecogTimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/diotek/ime/implement/setting/HwrSettings$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/HwrSettings$2;-><init>(Lcom/diotek/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->hwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private getEntries(II)[Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_0

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v2, v1

    const-string v5, "%d"

    aget-object v6, v3, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private setEntries(Ljava/lang/String;II)V
    .locals 9

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v6, v3, Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_1

    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v6, v4, v1

    const-string v7, "%d"

    aget-object v8, v5, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 23

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/HwrSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/HwrSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportHwrTutorial()Z

    move-result v20

    if-eqz v20, :cond_7

    const v20, 0x7f03005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    const-string v20, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const v21, 0x7f070003

    const v22, 0x7f070004

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/implement/setting/HwrSettings;->setEntries(Ljava/lang/String;II)V

    const-string v20, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const v21, 0x7f070007

    const v22, 0x7f070008

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/implement/setting/HwrSettings;->setEntries(Ljava/lang/String;II)V

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    const-string v20, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v22, "500"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v21

    aget-object v21, v21, v12

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->hwrRecogTimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v20, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    const/4 v11, 0x0

    const-string v20, "pen_thickness_icons"

    invoke-static/range {v20 .. v20}, Lcom/diotek/ime/implement/resource/CustomResource;->getObtainTypedArray(Ljava/lang/String;)Landroid/content/res/TypedArray;

    move-result-object v11

    const v20, 0x7f070007

    const v21, 0x7f070008

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/HwrSettings;->getEntries(II)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v11, v0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setEntries(Landroid/content/res/TypedArray;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setEntryValues([Ljava/lang/String;)V

    const-string v20, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const-string v21, "5"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    const-string v20, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    const-string v20, "pen_color_icons"

    invoke-static/range {v20 .. v20}, Lcom/diotek/ime/implement/resource/CustomResource;->getObtainTypedArray(Ljava/lang/String;)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07000b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v11, v0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setEntries(Landroid/content/res/TypedArray;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07000c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setEntryValues([Ljava/lang/String;)V

    const-string v20, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const-string v21, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    const-string v20, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v22, "0"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v21

    aget-object v21, v21, v12

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->hwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v18

    if-nez v18, :cond_1

    const-string v20, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "com.samsung.helphub"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/implement/setting/HwrSettings;->mIsKeypadGuideInHelpApp:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mIsKeypadGuideInHelpApp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const-string v20, "gesture_guide"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    const-string v20, "hwr_tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-eqz v16, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/HwrSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v13

    invoke-static {v13}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "DHWR"

    const-string v21, "VOHWRPANEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v20

    if-eqz v20, :cond_4

    :try_start_3
    const-string v20, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    :try_start_4
    const-string v20, "VOHWRPANEL"

    const-string v21, "VOHWRPANEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v20

    if-eqz v20, :cond_6

    :try_start_5
    const-string v20, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/DialogPreference;

    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    :try_start_6
    const-string v20, "about"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/DialogPreference;

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_5
    return-void

    :cond_7
    const v20, 0x7f030060

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v20, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v9

    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v10

    const-string v20, "SamsungIME"

    const-string v21, "HwrSettings - onCreate() : not found exception!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v10

    :try_start_8
    const-string v20, "SamsungIME"

    const-string v21, "HwrSettings - Recognition Type option can\'t be removed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v10

    const-string v20, "SamsungIME"

    const-string v21, "HwrSettings - Recognition Type option can\'t be removed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v10

    const-string v20, "SamsungIME"

    const-string v21, "HwrSettings - Recognition Type option can\'t be removed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
