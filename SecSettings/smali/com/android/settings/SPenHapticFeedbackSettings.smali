.class public Lcom/android/settings/SPenHapticFeedbackSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenHapticFeedbackSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mActionBarSwitch:Landroid/widget/Switch;

.field private static mActivity:Landroid/app/Activity;

.field private static mResolver:Landroid/content/ContentResolver;


# instance fields
.field private mHapticFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedbackSpenGestureCheckPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v7, "spen_feedback_haptic_air_command"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v7, "spen_feedback_haptic_air_view"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v7, "pen_writing_haptic_feedback"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v7, "spen_feedback_haptic_pen_gesture"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    or-int v7, v0, v1

    or-int/2addr v7, v4

    or-int v2, v7, v3

    if-ge v2, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private updateState()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackSpenGestureCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "spen_feedback_haptic_air_command"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "spen_feedback_haptic_air_view"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_writing_haptic_feedback"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackSpenGestureCheckPref:Landroid/preference/CheckBoxPreference;

    sget-object v4, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "spen_feedback_haptic_pen_gesture"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spen_feedback_haptic"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/SPenHapticFeedbackSettings;->updateState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SPenHapticFeedbackSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/SPenHapticFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "haptic_feedback_air_command"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "haptic_feedback_air_view"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "haptic_feedback_handwriting"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "haptic_feedback_pen_gesture"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackSpenGestureCheckPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackSpenGestureCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/settings/SPenHapticFeedbackSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spen_feedback_haptic"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v1, 0x7f091108

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f091106

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "spen_feedback_haptic_air_command"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "spen_feedback_haptic_air_view"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_writing_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackSpenGestureCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/SPenHapticFeedbackSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/SPenHapticFeedbackSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v2, Lcom/android/settings/SPenHapticFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    sget-object v2, Lcom/android/settings/SPenHapticFeedbackSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    sget-object v2, Lcom/android/settings/SPenHapticFeedbackSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    sget-object v3, Lcom/android/settings/SPenHapticFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    sget-object v2, Lcom/android/settings/SPenHapticFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    sget-object v3, Lcom/android/settings/SPenHapticFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "spen_feedback_haptic"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    sget-object v1, Lcom/android/settings/SPenHapticFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/SPenHapticFeedbackSettings;->updateState()V

    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SPenHapticFeedbackSettings;->mHapticFeedbackSpenGestureCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
