.class public Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "KeyboardSwipeSettingsFragment.java"


# instance fields
.field private isUsingPredictiveText:Z

.field private mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private misTablet:Z

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->misTablet:Z

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->changeSwipe(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method private changeSwipe(Landroid/preference/Preference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v6, 0x7f0800c0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v6, 0x7f0800c1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :try_start_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020b24

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x400

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f0e0057

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_MODE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->misTablet:Z

    :cond_1
    iget-boolean v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->misTablet:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    const v2, 0x7f030067

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v2, "settings_keyboard_swipe_none"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    new-instance v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$1;-><init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    const-string v2, "settings_keyboard_swipe_continuous_input"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    new-instance v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;-><init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    const-string v2, "settings_keyboard_swipe_cursor_control"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v2, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    new-instance v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$3;-><init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030080

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 21

    invoke-super/range {p0 .. p0}, Landroid/app/Fragment;->onResume()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e007c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    const-string v17, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_TRACE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v12

    const-string v17, "INPUT_LANGUAGE"

    const v18, 0x656e4742

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v17, -0x10000

    and-int v9, v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v16

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "com.sec.android.inputmethod_preferences"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v14, -0x1

    move v3, v9

    const/4 v15, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v4, v17, -0x1

    :goto_3
    if-ltz v4, :cond_6

    const-string v17, "0x%08x"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v20, v16, v4

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v10, v10, 0x1

    move v14, v4

    aget-object v17, v16, v4

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    const/high16 v18, -0x10000

    and-int v15, v17, v18

    if-nez v2, :cond_1

    if-ne v3, v15, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e007d

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v16

    goto/16 :goto_2

    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    const/high16 v18, -0x10000

    and-int v3, v17, v18

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const/high16 v17, 0x6a610000

    move/from16 v0, v17

    if-ne v3, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_5
    return-void

    :cond_8
    if-eqz v10, :cond_9

    if-nez v2, :cond_7

    :cond_9
    aget-object v17, v16, v14

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    const/high16 v18, -0x10000

    and-int v3, v17, v18

    goto :goto_4

    :cond_a
    const/high16 v17, 0x7a680000

    move/from16 v0, v17

    if-ne v3, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5
.end method
