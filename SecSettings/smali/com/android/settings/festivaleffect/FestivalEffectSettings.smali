.class public Lcom/android/settings/festivaleffect/FestivalEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FestivalEffectSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

.field private mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

.field private mEventNotification:Landroid/preference/CheckBoxPreference;

.field private mFestivalHome:Landroid/preference/CheckBoxPreference;

.field private mFestivalTheme:Landroid/preference/PreferenceScreen;

.field private mHelpPref:Landroid/preference/Preference;

.field private mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

.field private mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

.field private mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

.field private mMessagesBackground:Landroid/preference/CheckBoxPreference;

.field private mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

.field private mMoreCategory:Landroid/preference/PreferenceCategory;

.field private mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

.field private mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

.field private mPersonalizationCategory:Landroid/preference/PreferenceCategory;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    return-void
.end method

.method private broadcastEventNotificationChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastFestivalEffectChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastFestivalHomeChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.FESTIVAL_HOME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastHomeLockScreenChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.HOME_LOCK_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastLockscreenWallpaperChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastMessagesBackgroundChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.MESSAGES_BACKGROUND_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastNotificationPanelChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isAllAllowedFunctionDisabled()Z
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_home_lock_screen"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_notification_panel"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_weather_widget"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_key_melody"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_customize_event"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_festival_home"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_lockscreen_wallpaper"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_messages_background"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_notification_panel"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    or-int v11, v4, v7

    if-ge v11, v9, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    move v9, v10

    goto :goto_0

    :cond_2
    or-int v11, v4, v7

    or-int/2addr v11, v6

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_3
    const-string v11, "2"

    invoke-static {}, Lcom/android/settings/Utils;->festivalEffectType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    or-int v11, v4, v7

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_4
    or-int v11, v2, v5

    or-int/2addr v11, v6

    or-int/2addr v11, v1

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v3, "festival_effect_help"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    const v5, 0x7f0400ba

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    const-string v3, "allowed_functions_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "home_lock_screen"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "notification_panel"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "weather_widget"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "allowed_personalization_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mPersonalizationCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "key_melody"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "customize_event"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "notification_panel_j"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    const-string v3, "lock_screen_wallpaper_j"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    const-string v3, "messages_background_j"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    const-string v3, "festival_home"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    const-string v3, "lock_screen_wallpaper"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    const-string v3, "messages_background"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    const-string v3, "event_notification"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    const-string v3, "more_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMoreCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "festival_theme"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalTheme:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mPersonalizationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const-string v3, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "festival_effect_enabled"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    if-ne v3, v2, :cond_4

    :goto_1
    const-string v3, "home_lock_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "2"

    invoke-static {}, Lcom/android/settings/Utils;->festivalEffectType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMoreCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalTheme:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto/16 :goto_1

    :cond_5
    const-string v3, "notification_panel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    const-string v3, "weather_widget"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    const-string v3, "festival_home"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const-string v3, "lock_screen_wallpaper"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v3, "messages_background"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const-string v3, "event_notification"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    const-string v3, "lock_screen_wallpaper_j"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    const-string v3, "messages_background_j"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const-string v3, "notification_panel_j"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090fad

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastHomeLockScreenChanged(Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    :cond_1
    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastNotificationPanelChanged(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastNotificationPanelChanged(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_weather_widget"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_key_melody"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_customize_event"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_festival_home"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalHomeChanged(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_lockscreen_wallpaper"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastLockscreenWallpaperChanged(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastHomeLockScreenChanged(Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_messages_background"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastMessagesBackgroundChanged(Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_messages_background"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastMessagesBackgroundChanged(Z)V

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastEventNotificationChanged(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 11

    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iput-boolean v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "festival_effect_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_home_lock_screen"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    :goto_1
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_notification_panel"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_weather_widget"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_key_melody"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    :goto_4
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_customize_event"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    :goto_5
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_notification_panel"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_home_lock_screen"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v4

    :goto_7
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_messages_background"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v4

    :goto_8
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_festival_home"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v4

    :goto_9
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_lockscreen_wallpaper"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_d

    move v6, v4

    :goto_a
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_messages_background"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    :goto_b
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_notification_panel"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_f

    :goto_c
    invoke-virtual {v6, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_3
    move v0, v5

    goto/16 :goto_0

    :cond_4
    move v6, v5

    goto/16 :goto_1

    :cond_5
    move v6, v5

    goto/16 :goto_2

    :cond_6
    move v6, v5

    goto/16 :goto_3

    :cond_7
    move v6, v5

    goto/16 :goto_4

    :cond_8
    move v6, v5

    goto/16 :goto_5

    :cond_9
    move v6, v5

    goto :goto_6

    :cond_a
    move v6, v5

    goto :goto_7

    :cond_b
    move v6, v5

    goto :goto_8

    :cond_c
    move v6, v5

    goto :goto_9

    :cond_d
    move v6, v5

    goto :goto_a

    :cond_e
    move v6, v5

    goto :goto_b

    :cond_f
    move v4, v5

    goto :goto_c
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method
