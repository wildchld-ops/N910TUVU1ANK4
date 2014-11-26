.class public Lcom/android/settings/motion/MotionSensitivitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSensitivitySettings.java"


# instance fields
.field private mGlanceView:Landroid/preference/Preference;

.field private mKeyOfLatestClickedMenu:Ljava/lang/String;

.field private mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mSensitivitySettingCategory:Landroid/preference/PreferenceCategory;

.field private mSupportBrowser:Z

.field private mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const-string v0, "MotionsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    const-string v0, "tilt_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    :cond_1
    const-string v0, "tilt_to_scroll_list_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    :cond_2
    const-string v0, "pan_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    :cond_3
    const-string v0, "pan_to_browse_image_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.browser"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mSupportBrowser:Z

    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v2, "glance_view"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mGlanceView:Landroid/preference/Preference;

    const-string v2, "category_sensitivity_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mSensitivitySettingCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "tilt_sensitivity"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v2, "tilt_to_scroll_list_sensitivity"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v2, "pan_sensitivity"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v2, "pan_to_browse_image_sensitivity"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x44d

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x44e

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x4b1

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x4b2

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_GLANCE_VIEW"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mGlanceView:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mSensitivitySettingCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v2, "g_sensor"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "MotionsSettings"

    const-string v3, "remove Gyro calibration"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mSupportBrowser:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const v3, 0x7f090fc0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v1, "MotionsSettings"

    const-string v4, "onResume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v1, "motion_zooming"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v1, "motion_panning"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v4, "motion_pan_to_browse_image"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

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
