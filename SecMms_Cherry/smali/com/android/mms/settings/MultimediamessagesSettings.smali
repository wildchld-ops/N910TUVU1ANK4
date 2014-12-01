.class public Lcom/android/mms/settings/MultimediamessagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultimediamessagesSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultimediaMessagesSettings"


# instance fields
.field private mAutoRetrieval:Landroid/preference/CheckBoxPreference;

.field private mAutoRetrieveSettingsPref:Landroid/preference/Preference;

.field mContext:Landroid/content/Context;

.field private mCreationModeActionName:[Ljava/lang/String;

.field private mGroupMms:Landroid/preference/CheckBoxPreference;

.field private mMmsChangeOverAlarm:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryTimePref:Landroid/preference/Preference;

.field private mMmsExpiryTimePref:Landroid/preference/Preference;

.field private mMmsGroupMessage:Landroid/preference/CheckBoxPreference;

.field private mMmsMMSCPortPref:Landroid/preference/Preference;

.field private mMmsMMSCUrlPref:Landroid/preference/Preference;

.field private mMmsPriorityPref:Landroid/preference/Preference;

.field private mMmsReadReportPref:Landroid/preference/CheckBoxPreference;

.field private mMmsSendDeliveryReportPref:Landroid/preference/CheckBoxPreference;

.field private mMmsUseTitle:Landroid/preference/CheckBoxPreference;

.field private mReplyAllPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mGroupMms:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mCreationModeActionName:[Ljava/lang/String;

    return-void
.end method

.method private CreationModeActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mCreationModeActionName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/mms/settings/MultimediamessagesSettings;->getCreationMode(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mCreationModeActionName:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mCreationModeActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/settings/MultimediamessagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/MultimediamessagesSettings;->updateGroupMmsPreference()V

    return-void
.end method

.method private confirmGroupMmsDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c03a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static getCreationMode(Ljava/lang/String;)I
    .locals 3

    const-string v0, "Mms/MultimediaMessagesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCreationMode slAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private onAutoRetrieveSettingsClick(Landroid/preference/Preference;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TabAutoRetrieve"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/ui/AutoRetrieveTabActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    const-string v3, "simSlot"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/ui/AutoRetrievePreferenceActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    const-string v3, "simSlot"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/ui/AutoRetrievePreferenceActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "TabAutoRetrieve"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/ui/AutoRetrieveTabActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setCheckMenu()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_mms_delivery_reports"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsSendDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsSendDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_send_mms_delivery_reports"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsReadReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsReadReportPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_mms_read_reports"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsGroupMessage:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsGroupMessage:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_mms_group_mms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsChangeOverAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsChangeOverAlarm:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_mms_change_over_alarm"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_mms_allow_reply_all"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mAutoRetrieval:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mAutoRetrieval:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsUseTitle:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsUseTitle:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_mms_add_subject_field"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method private setCreationModeSummary(Landroid/content/SharedPreferences;)V
    .locals 4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsCreationMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    const-string v2, "pref_key_mms_creation_mode"

    const-string v3, "free"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->CreationModeActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPreferenceSummary()V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/settings/MultimediamessagesSettings;->setCreationModeSummary(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private updateGroupMmsPreference()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "pref_key_mms_group_mms"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_mms_group_mms"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mGroupMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mCreationModeActionName:[Ljava/lang/String;

    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_send_mms_delivery_reports"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsSendDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_mms_read_reports"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsReadReportPref:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_mms_group_mms"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsGroupMessage:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_mms_change_over_alarm"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsChangeOverAlarm:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mAutoRetrieval:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_mms_expiry_time"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsExpiryTimePref:Landroid/preference/Preference;

    const-string v1, "pref_key_mmspriority"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsPriorityPref:Landroid/preference/Preference;

    const-string v1, "pref_key_mms_delivery_time"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    const-string v1, "pref_mmsc_url"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    const-string v1, "pref_mmsc_port"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsMMSCPortPref:Landroid/preference/Preference;

    const-string v1, "pref_key_auto_retrieval_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mAutoRetrieveSettingsPref:Landroid/preference/Preference;

    const-string v1, "pref_key_mms_add_subject_field"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsUseTitle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/mms/settings/MultimediamessagesSettings;->setMmsPreferences()V

    invoke-direct {p0}, Lcom/android/mms/settings/MultimediamessagesSettings;->setPreferenceSummary()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mGroupMms:Landroid/preference/CheckBoxPreference;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

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

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Mms/MultimediaMessagesSettings"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    const-string v3, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "pref_key_mms_allow_reply_all"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_2
    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_key_mms_allow_reply_all"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mAutoRetrieveSettingsPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    invoke-direct {p0, p2}, Lcom/android/mms/settings/MultimediamessagesSettings;->onAutoRetrieveSettingsClick(Landroid/preference/Preference;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_mms_group_mms"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mGroupMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mGroupMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v2, Lcom/android/mms/settings/MultimediamessagesSettings$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/MultimediamessagesSettings$1;-><init>(Lcom/android/mms/settings/MultimediamessagesSettings;)V

    invoke-direct {p0, v2}, Lcom/android/mms/settings/MultimediamessagesSettings;->confirmGroupMmsDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/mms/settings/MultimediamessagesSettings;->setPreferenceSummary()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Mms/MultimediaMessagesSettings"

    const-string v2, "onResume - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/settings/MultimediamessagesSettings;->setCheckMenu()V

    return-void

    :cond_0
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_key_mms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_key_mms_creation_mode"

    const-string v2, "free"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mms/settings/MultimediamessagesSettings;->setCreationModeSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    return-void
.end method

.method protected setMmsPreferences()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_group_mms"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSubjectConcept4Korea()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_add_subject_field"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsSendDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsReadReportPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsReadReportPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRetrievalDuringRoaming()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsCreationMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsExpiryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsPriorityPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuMmsServerAddr()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsMMSCPortPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "pref_key_mms_group_mms"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mGroupMms:Landroid/preference/CheckBoxPreference;

    :cond_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/mms/settings/MultimediamessagesSettings;->mMmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0279

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_auto_retrieval_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/MultimediamessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_1
.end method
