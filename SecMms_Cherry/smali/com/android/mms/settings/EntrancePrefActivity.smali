.class public Lcom/android/mms/settings/EntrancePrefActivity;
.super Landroid/preference/PreferenceActivity;
.source "EntrancePrefActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/EntrancePrefActivity"

.field private static final isMultiSim:Z


# instance fields
.field private mCBCheckBox:Z

.field private mCBValidSlotId:I

.field private mCbActivationCheckBoxPref:Landroid/preference/Preference;

.field private mCbActivationPref:Landroid/preference/Preference;

.field mContext:Landroid/content/Context;

.field private mFromSettingApp:Z

.field private mIsSmsEnabled:Z

.field private mMaxChannelCount:I

.field private mMaxChannelCount_sim2:I

.field private mMyChannels:I

.field private mMyChannels_sim2:I

.field private mSimStatus:Z

.field private mSmsDisabledPref:Landroid/preference/Preference;

.field private mSmsEnabledPref:Landroid/preference/Preference;

.field private mSmsc:Ljava/lang/String;

.field private mSmsc_sim2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getSimSlotCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/settings/EntrancePrefActivity;->isMultiSim:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBValidSlotId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsc:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSimStatus:Z

    iput v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMaxChannelCount:I

    iput v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMyChannels:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsc_sim2:Ljava/lang/String;

    iput v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMaxChannelCount_sim2:I

    iput v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMyChannels_sim2:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/EntrancePrefActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/EntrancePrefActivity;

    invoke-direct {p0}, Lcom/android/mms/settings/EntrancePrefActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method private backupNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1    # Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v0, "pref_key_manage_smsc_address"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsc:Ljava/lang/String;

    const-string v0, "pref_sim_ready_status"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSimStatus:Z

    const-string v0, "pref_cb_my_channel_max_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMaxChannelCount:I

    const-string v0, "pref_cb_my_channel_enabled_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMyChannels:I

    sget-boolean v0, Lcom/android/mms/settings/EntrancePrefActivity;->isMultiSim:Z

    if-eqz v0, :cond_0

    const-string v0, "pref_key_manage_smsc_address_sim2"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsc_sim2:Ljava/lang/String;

    const-string v0, "pref_cb_my_channel_max_count_sim2"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMaxChannelCount_sim2:I

    const-string v0, "pref_cb_my_channel_enabled_count_sim2"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMyChannels_sim2:I

    :cond_0
    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private refreshSIMPreferences()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v4, v4}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v0, v5, :cond_3

    :cond_0
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    const-string v2, "pref_key_cb_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    invoke-static {v5, v5}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .param p1    # Landroid/preference/PreferenceGroup;
    .param p2    # Landroid/preference/Preference;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/settings/EntrancePrefActivity;->backupNetworkStatus(Landroid/content/SharedPreferences;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    invoke-direct {p0, v0}, Lcom/android/mms/settings/EntrancePrefActivity;->restoreNetworkStatus(Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter;->deleteAll(Landroid/content/Context;)I

    :cond_0
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/mms/settings/EntrancePrefActivity;->setMainSettingsPreferences()V

    invoke-virtual {p0}, Lcom/android/mms/settings/EntrancePrefActivity;->deleteBubbleBackgroundStyle()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "message.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setDefaultPreference(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/android/mms/settings/EntrancePrefActivity;->refreshSIMPreferences()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->updateMessagesSettings(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    const-string v2, "pref_key_root"

    const-string v3, "pref_mms_settings"

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/mms/reflector/AmbsReflector;->insertAcmsOptMenuItem(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private restoreNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1    # Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_manage_smsc_address"

    iget-object v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_sim_ready_status"

    iget-boolean v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSimStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_max_count"

    iget v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMaxChannelCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_enabled_count"

    iget v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMyChannels:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-boolean v1, Lcom/android/mms/settings/EntrancePrefActivity;->isMultiSim:Z

    if-eqz v1, :cond_0

    const-string v1, "pref_key_manage_smsc_address_sim2"

    iget-object v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsc_sim2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_max_count_sim2"

    iget v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMaxChannelCount_sim2:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_enabled_count_sim2"

    iget v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mMyChannels_sim2:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setEnabled(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1    # Landroid/preference/Preference;
    .param p2    # Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setOptionSummary(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1    # Landroid/preference/Preference;
    .param p2    # Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const v0, 0x7f0c04b4

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0c04b5

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateCbSettingState(ZI)V
    .locals 5
    .param p1    # Z
    .param p2    # I

    const/4 v4, 0x1

    const-string v1, "Mms/EntrancePrefActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCbSettingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_key_root"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationCheckBoxPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationCheckBoxPref:Landroid/preference/Preference;

    const-string v2, "pref_key_cb_settings_activation"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-ne p2, v4, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationCheckBoxPref:Landroid/preference/Preference;

    const-string v2, "pref_key_cb_settings_activation_sim2"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationCheckBoxPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    goto :goto_1
.end method

.method private updateMessagesSettings(Z)V
    .locals 25
    .param p1    # Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v12, v0, :cond_0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v22, "pref_key_auto_delete"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v22, "pref_key_enable_push_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    const-string v22, "pref_key_enable_push_message_not_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v22, "pref_key_cb_settings_activation"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const-string v22, "pref_key_enable_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const-string v22, "pref_key_spam_option_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const-string v22, "pref_key_enable_delaysending"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const-string v22, "pref_key_enable_signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const-string v22, "pref_key_settings_callback_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v18

    if-eqz v15, :cond_1

    const-string v22, "pref_key_enable_push_message"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    const-string v22, "pref_key_cb_settings_activation_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v9, :cond_8

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v22, v9

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v22

    if-nez v22, :cond_5

    if-eqz p1, :cond_5

    if-eqz v9, :cond_c

    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->updateCbSettingState(ZI)V

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAutoDeleteOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPushMessagesOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getDelayOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v22

    if-nez v22, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsInputMode()Z

    move-result v22

    if-nez v22, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v22

    if-nez v22, :cond_7

    :cond_6
    const/16 v21, 0x0

    :cond_7
    const-string v22, "pref_display_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    const-string v22, "pref_key_text_templates"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    const-string v22, "pref_sms_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    const-string v22, "pref_mms_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    const-string v22, "pref_key_priority_sender"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    const-string v22, "pref_key_settings_callback_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    const-string v22, "pref_key_enable_freemessage"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    const-string v22, "pref_key_urllink_option_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->setEnabled(Landroid/preference/Preference;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/settings/EntrancePrefActivity;->updateSmsEnabledState()V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/settings/EntrancePrefActivity;->updatePrioritySenderEnabledState()V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/settings/EntrancePrefActivity;->updateSenderInfoWhenFwdMsgDisabledState()V

    return-void

    :cond_8
    if-eqz v6, :cond_4

    const-string v22, "Mms/EntrancePrefActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "cb Check simSlot:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBValidSlotId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v8

    const-string v22, "Mms/EntrancePrefActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "cb Check simSlot2 Pref:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v6

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->updateCbSettingState(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationCheckBoxPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_b
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->updateCbSettingState(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationCheckBoxPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_c
    if-eqz v6, :cond_5

    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/settings/EntrancePrefActivity;->updateCbSettingState(ZI)V

    goto/16 :goto_1

    :cond_d
    const/4 v5, 0x0

    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const-string v22, "pref_key_cb_settings_activation_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    :cond_e
    if-nez v9, :cond_f

    if-eqz v5, :cond_5

    :cond_f
    if-nez p1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->setOptionSummary(Landroid/preference/Preference;Z)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const-string v22, "pref_key_cb_settings_activation"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_12

    check-cast v7, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_12
    const-string v22, "pref_key_cb_settings_activation_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method private updatePrioritySenderEnabledState()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_priority_sender"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "pref_key_priority_sender"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    new-instance v3, Lcom/android/mms/settings/EntrancePrefActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/settings/EntrancePrefActivity$1;-><init>(Lcom/android/mms/settings/EntrancePrefActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateSenderInfoWhenFwdMsgDisabledState()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_insert_sender_info_when_fwd_msg"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "pref_key_insert_sender_info_when_fwd_msg"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateSmsEnabledState()V
    .locals 2

    const-string v1, "pref_key_root"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iget-boolean v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mIsSmsEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteBubbleBackgroundStyle()V
    .locals 5

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->clearCache()V

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->fillCache()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "from_settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mFromSettingApp:Z

    iget-boolean v2, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mFromSettingApp:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    :goto_0
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/mms/settings/EntrancePrefActivity;->setMainSettingsPreferences()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    const-string v3, "pref_key_root"

    const-string v4, "pref_mms_settings"

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/reflector/AmbsReflector;->insertAcmsOptMenuItem(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c0053

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020112

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    new-instance v1, Lcom/android/mms/settings/EntrancePrefActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/EntrancePrefActivity$2;-><init>(Lcom/android/mms/settings/EntrancePrefActivity;)V

    invoke-direct {p0, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Mms/EntrancePrefActivity"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/reflector/AmbsReflector;->stopListenOOBEChange()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v3, "pref_key_auto_delete"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/settings/DeleteoldMessagesSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string v3, "pref_key_enable_push_message_not_att"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/settings/PushMessagesSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const-string v3, "pref_key_enable_notifications"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/mms/settings/EntrancePrefActivity;->isMultiSim:Z

    if-eqz v3, :cond_c

    invoke-static {v6, v6}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v2

    if-ne v2, v8, :cond_9

    const-class v3, Lcom/android/mms/settings/NotificationSettingsDS;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const-string v3, "fromInteral"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    const-string v3, "pref_key_spam_option_enable"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/settings/SpamSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    const-string v3, "pref_key_enable_delaysending"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/settings/DelaySendingSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    sget-boolean v3, Lcom/android/mms/settings/EntrancePrefActivity;->isMultiSim:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    if-nez v3, :cond_6

    const-string v3, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_6

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v5, v5}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v2

    if-ne v2, v8, :cond_d

    const-class v3, Lcom/android/mms/ui/CbSettingTabActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_5
    :goto_1
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v3, "Mms/EntrancePrefActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick() : pref_key_cb_settings_activation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "pref_key_sms_restore"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "mode"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    const-string v3, "pref_key_enable_freemessage"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/settings/FreeMessageSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_9
    if-ne v2, v5, :cond_b

    const-string v3, "Mms/EntrancePrefActivity"

    const-string v4, "pref_key_enable_notifications() : set simSlot 0"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "simSlot"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_a
    :goto_2
    const-class v3, Lcom/android/mms/settings/NotificationSettings;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_b
    if-ne v2, v7, :cond_a

    const-string v3, "Mms/EntrancePrefActivity"

    const-string v4, "pref_key_enable_notifications() : set simSlot 1"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "simSlot"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_c
    const-class v3, Lcom/android/mms/settings/NotificationSettings;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_d
    if-ne v2, v5, :cond_e

    const-string v3, "Mms/EntrancePrefActivity"

    const-string v4, "onPreferenceTreeClick() : set simSlot 0"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "simSlot"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_e
    if-ne v2, v7, :cond_5

    const-string v3, "Mms/EntrancePrefActivity"

    const-string v4, "onPreferenceTreeClick() : set simSlot 1"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "simSlot"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Mms/EntrancePrefActivity"

    const-string v2, "onResume - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/settings/EntrancePrefActivity;->updateMessagesSettings(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/reflector/AmbsReflector;->listenOptInSettingChange(Landroid/preference/PreferenceActivity;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onSaveLog(Z)V
    .locals 3
    .param p1    # Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    const-string v1, "PROI"

    const-string v2, "check"

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    const-string v1, "PROI"

    const-string v2, "uncheck"

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    const-string v0, "Mms/EntrancePrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_key_cb_settings_activation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v3}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMACMASEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "pref_key_cb_settings_activation_sim2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBValidSlotId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMACMASEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method protected setMainSettingsPreferences()V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "pref_key_sms_disabled"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    const-string v8, "pref_key_sms_enabled"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    const-string v8, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationPref:Landroid/preference/Preference;

    const-string v8, "pref_key_cb_settings_activation_checkbox"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCbActivationCheckBoxPref:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0c0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v8, 0x7f0c046d

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v0, v9, v6

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "pref_mms_settings"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->isAuthEasySignUp(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "pref_key_enable_freemessage"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "pref_key_enable_freemessage"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "pref_key_rcs_setting"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_4
    invoke-static {v7, v7}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v4, :cond_10

    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_cb_settings_activation_checkbox"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_enable_signature"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_text_templates"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_spam_option_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWapPush()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_enable_push_message"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_enable_push_message_not_att"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_18

    :cond_a
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_cmas_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_b
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_settings_callback_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_sms_restore"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_insert_sender_info_when_fwd_msg"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_enable_delaysending"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_f
    return-void

    :cond_10
    iput-boolean v6, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    const/4 v8, 0x3

    if-ne v4, v8, :cond_11

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_cb_settings_activation_checkbox"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_11
    if-ne v4, v7, :cond_12

    :goto_4
    iput v6, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBValidSlotId:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v8, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v6, "pref_key_cb_settings_activation_checkbox"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v6, "Mms/EntrancePrefActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set Preference Key to CELL_BROADCAST_ACTIVATION - slotCap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v7, :cond_13

    const-string v6, "pref_key_cb_settings_activation"

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    :goto_5
    iput-boolean v7, p0, Lcom/android/mms/settings/EntrancePrefActivity;->mCBCheckBox:Z

    goto/16 :goto_0

    :cond_12
    move v6, v7

    goto :goto_4

    :cond_13
    const-string v6, "pref_key_cb_settings_activation_sim2"

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_cb_settings_activation_checkbox"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_spam_option_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_1

    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_enable_push_message"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_2

    :cond_17
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_enable_push_message_not_att"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_2

    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseAnotherCMASApp()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_cmas_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/settings/EntrancePrefActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_3
.end method
