.class public Lcom/android/launcher2/HomeScreenOptionSettings;
.super Landroid/preference/PreferenceActivity;
.source "HomeScreenOptionSettings.java"


# static fields
.field public static final KEY_MY_MAGAZINE:Ljava/lang/String; = "pref_my_magazine"

.field public static final KEY_TRANSITION_EFFECT_CHECKBOX:Ljava/lang/String; = "pref_transition_effect"

.field public static final KEY_TRANSITION_EFFECT_LIST:Ljava/lang/String; = "pref_list_transition_effect"

.field public static final RESULT_TRANSITION_EFFECT1:I = 0x1

.field public static final RESULT_TRANSITION_EFFECT2:I = 0x2

.field public static final RESULT_TRANSITION_NONE:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field magazineEnabled:Landroid/preference/CheckBoxPreference;

.field ps:Landroid/preference/PreferenceScreen;

.field transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

.field transitionEffect_setting:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenSettings"

    sput-object v0, Lcom/android/launcher2/HomeScreenOptionSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setEnableMagazine(Z)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->setEnableHeadlines(Z)V

    :cond_0
    return-void
.end method

.method private setEnableTransitionEffect(I)V
    .locals 5

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "pref_list_transition_effect"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private setSummaryTransitionList(I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    return-void

    :pswitch_0
    const v0, 0x7f0f0115

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0f0113

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0f0114

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/HomeScreenOptionSettings;->TAG:Ljava/lang/String;

    const-string v1, "onAcitivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setSummaryTransitionList(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->setCocktailBarStatus(ZZ)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v3, v4, :cond_5

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    const v3, 0x7f030025

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string v3, "home_screen_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_my_magazine"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_transition_effect"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_list_transition_effect"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "pref_list_transition_effect"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setSummaryTransitionList(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableTransitionEffect(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableTransitionEffect(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/HomeScreenOptionTransition;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
