.class public Lcom/android/mms/settings/CMASSettings;
.super Landroid/preference/PreferenceActivity;
.source "CMASSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/CMASSettings"


# instance fields
.field private mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

.field private mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/settings/CMASSettings;->mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setCmasReminderSummary(Landroid/content/SharedPreferences;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v5, "pref_key_emergency_alert_reminder"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v5, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_2

    const/4 v5, 0x3

    aget-object v3, v2, v5

    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    const/4 v5, 0x0

    aget-object v3, v2, v5

    goto :goto_1

    :cond_3
    if-ne v0, v8, :cond_4

    aget-object v3, v2, v7

    goto :goto_1

    :cond_4
    const/16 v5, 0xf

    if-ne v0, v5, :cond_1

    aget-object v3, v2, v8

    goto :goto_1
.end method

.method private setPreferenceSummary()V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/settings/CMASSettings;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method private setVibrateMenu()V
    .locals 3

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/CMASSettings;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/CMASSettings;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/settings/CMASSettings;->updateNotificationAlert()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/CMASSettings;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/CMASSettings;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c03df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showCMASPreviewDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/CMASSettings;->mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/CMASSettings;->mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/settings/CMASSettings;->mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    iget-object v0, p0, Lcom/android/mms/settings/CMASSettings;->mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private updateNotificationAlert()V
    .locals 6

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v4, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationOption(Landroid/content/Context;)Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/mms/settings/CMASSettings;->setOthersPreferences()V

    invoke-direct {p0}, Lcom/android/mms/settings/CMASSettings;->setPreferenceSummary()V

    return-void
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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    const-string v1, "Mms/CMASSettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Mms/CMASSettings"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/settings/CMASSettings;->mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/CMASSettings;->mCmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASPreviewDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_cmas"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/CMASPreferenceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pref_key_emergency_alert"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_2

    invoke-direct {p0}, Lcom/android/mms/settings/CMASSettings;->showCMASPreviewDialog()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_3

    const-string v2, "Mms/CMASSettings"

    const-string v3, "onPreferenceTreeClick key : pref_key_explain_emergency_alert"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/mms/settings/CMASSettings$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/CMASSettings$1;-><init>(Lcom/android/mms/settings/CMASSettings;)V

    invoke-direct {p0, v2}, Lcom/android/mms/settings/CMASSettings;->showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_cmas_receive_class1"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    const-string v2, "Mms/CMASSettings"

    const-string v3, "onPreferenceTreeClick key : pref_cmas_receive_class1"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mms/CMASSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setCMAS config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    const-string v1, "Mms/CMASSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/mms/settings/CMASSettings;->setPreferenceSummary()V

    invoke-direct {p0}, Lcom/android/mms/settings/CMASSettings;->setVibrateMenu()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Mms/CMASSettings"

    const-string v2, "onResume - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_key_emergency_alert_reminder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/settings/CMASSettings;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    return-void
.end method

.method protected setOthersPreferences()V
    .locals 2

    const-string v0, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/settings/CMASSettings;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/CMASSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/CMASSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_cmas_audioWhen_checkbox"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/CMASSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_cmas"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/CMASSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v0, "pref_key_emergency_alert"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "pref_cmas_receive_class1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v0, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "pref_cmas_receive_class1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v0, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "pref_cmas_receive_class1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/settings/CMASSettings;->setVibrateMenu()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_cmas_receive_class1"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/CMASSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/CMASSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_0
.end method
