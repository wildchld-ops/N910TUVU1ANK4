.class public Lcom/android/mms/settings/TextMessagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "TextMessagesSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/settings/TextMessagesSettings$SMSCLengthFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TextMessagesSettings"


# instance fields
.field public airplaneReceiver:Landroid/content/BroadcastReceiver;

.field private isMultiSIM:Z

.field private mAutoCombination:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mManageSDPref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSlotCapability:I

.field private mSmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

.field private mSmscAddrPref:Landroid/preference/EditTextPreference;

.field private mSmscAddrPrefDS:Landroid/preference/Preference;

.field public serviceStateReceiver:Landroid/content/BroadcastReceiver;

.field private simStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->isMultiSIM:Z

    iput v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    new-instance v0, Lcom/android/mms/settings/TextMessagesSettings$2;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/TextMessagesSettings$2;-><init>(Lcom/android/mms/settings/TextMessagesSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/settings/TextMessagesSettings$3;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/TextMessagesSettings$3;-><init>(Lcom/android/mms/settings/TextMessagesSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/settings/TextMessagesSettings$4;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/TextMessagesSettings$4;-><init>(Lcom/android/mms/settings/TextMessagesSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->serviceStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/settings/TextMessagesSettings$5;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/TextMessagesSettings$5;-><init>(Lcom/android/mms/settings/TextMessagesSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/settings/TextMessagesSettings$6;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/TextMessagesSettings$6;-><init>(Lcom/android/mms/settings/TextMessagesSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/TextMessagesSettings;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/TextMessagesSettings;

    invoke-direct {p0}, Lcom/android/mms/settings/TextMessagesSettings;->refreshSIMPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/settings/TextMessagesSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/mms/settings/TextMessagesSettings;

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->mManageSDPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/settings/TextMessagesSettings;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0    # Lcom/android/mms/settings/TextMessagesSettings;
    .param p1    # Landroid/preference/Preference;

    iput-object p1, p0, Lcom/android/mms/settings/TextMessagesSettings;->mManageSDPref:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/settings/TextMessagesSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0    # Lcom/android/mms/settings/TextMessagesSettings;

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c012c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private refreshSIMPreferences()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v8, v8}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v6

    if-eqz v6, :cond_0

    if-ne v0, v9, :cond_7

    :cond_0
    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget v6, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-ne v6, v10, :cond_8

    const-string v5, "pref_key_manage_smsc_address_sim2"

    :goto_1
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-eqz v6, :cond_2

    if-ne v0, v9, :cond_9

    :cond_2
    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableDeliveryReportInRoaming()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/mms/util/TelephonyUtils;->isCdmaRoamingActive(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v9, :cond_d

    :cond_4
    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    if-ne v2, v10, :cond_5

    const-string v6, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    return-void

    :cond_7
    if-eq v0, v9, :cond_1

    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    const-string v5, "pref_key_manage_smsc_address"

    goto :goto_1

    :cond_9
    iget v6, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSCEditable()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_b
    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_d
    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v6, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
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

.method private setCheckMenu()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/settings/TextMessagesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/TextMessagesSettings;->mAutoCombination:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/TextMessagesSettings;->mAutoCombination:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_sms_reassembly"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_sms_delivery_reports"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private setPreferenceSummary()V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/settings/TextMessagesSettings;->setSmscSummary(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private setSmscSummary(Landroid/content/SharedPreferences;)V
    .locals 7
    .param p1    # Landroid/content/SharedPreferences;

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-static {v5, v5}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v3

    iput v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    iget v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-ne v3, v6, :cond_2

    const-string v0, "pref_key_manage_smsc_address_sim2"

    :goto_0
    const-string v3, ""

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-ne v3, v6, :cond_3

    invoke-static {p1, v5}, Lcom/android/mms/util/TelephonyUtils;->getSmsc(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "pref_key_manage_smsc_address"

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->getSmsc(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-static {v4, v4}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v2

    iput v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    iget v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iput-boolean v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->isMultiSIM:Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->isMultiSIM:Z

    if-eqz v2, :cond_2

    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    :goto_0
    const-string v2, "pref_key_sms_reassembly"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->mAutoCombination:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/mms/settings/TextMessagesSettings;->setSmsPreferences()V

    iget-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->serviceStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->simStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->serviceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

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
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    const-string v3, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/android/mms/settings/TextMessagesSettings$1;

    invoke-direct {v3, p0}, Lcom/android/mms/settings/TextMessagesSettings$1;-><init>(Lcom/android/mms/settings/TextMessagesSettings;)V

    invoke-direct {p0, v3}, Lcom/android/mms/settings/TextMessagesSettings;->confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string v3, "pref_key_sms_reassembly"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    const-class v3, Landroid/telephony/SmsManager;

    const-string v4, "setCDMASmsReassembly"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "pref_key_sms_reassembly"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v0, v3}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v3, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_5

    iget-boolean v3, p0, Lcom/android/mms/settings/TextMessagesSettings;->isMultiSIM:Z

    if-eqz v3, :cond_5

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/settings/MessageSmscActivityDS;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v3, "pref_key_sms_input_mode"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_0

    const-string v3, "IMOD"

    invoke-static {p0, v3}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/mms/settings/TextMessagesSettings;->setPreferenceSummary()V

    invoke-direct {p0}, Lcom/android/mms/settings/TextMessagesSettings;->setCheckMenu()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected setSmsPreferences()V
    .locals 9

    const/16 v8, 0x14

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-ne v4, v5, :cond_7

    invoke-static {v7}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->isMultiSIM:Z

    if-eqz v4, :cond_8

    const-string v4, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPrefDS:Landroid/preference/Preference;

    :cond_0
    :goto_1
    const-string v4, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mManageSDPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mManageSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableDoCoMoDeliveryReportFormat()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_9

    :cond_3
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsInputMode()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_key_sms_input_mode"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "pref_key_sms_reassembly"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_6
    return-void

    :cond_7
    invoke-static {v6}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v3

    goto :goto_0

    :cond_8
    const-string v4, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    const-string v5, "pref_key_manage_smsc_address_sim2"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableManageSimMessages()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v6, v6}, Lcom/android/mms/util/TelephonyUtils;->getMultiSimCardCapability(II)I

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mManageSimPref:Landroid/preference/Preference;

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSlotCapability:I

    if-nez v4, :cond_10

    :cond_d
    iget-boolean v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->isMultiSIM:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPrefDS:Landroid/preference/Preference;

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_e
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "pref_key_sms_expiry"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_2

    :cond_f
    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_3

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_3

    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/mms/settings/TextMessagesSettings$SMSCLengthFilter;

    invoke-direct {v4, p0, v8}, Lcom/android/mms/settings/TextMessagesSettings$SMSCLengthFilter;-><init>(Lcom/android/mms/settings/TextMessagesSettings;I)V

    aput-object v4, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_3

    :cond_12
    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/mms/settings/TextMessagesSettings$SMSCLengthFilter;

    invoke-direct {v4, p0, v8}, Lcom/android/mms/settings/TextMessagesSettings$SMSCLengthFilter;-><init>(Lcom/android/mms/settings/TextMessagesSettings;I)V

    aput-object v4, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_3

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "44010"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/settings/TextMessagesSettings;->mSmsDeliveryReportPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v4, "pref_key_sms_expiry"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/mms/settings/TextMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_2
.end method
