.class public Lcom/android/mms/settings/NotificationSettings;
.super Landroid/preference/PreferenceActivity;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field private static final DEFAULT_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final INTENT_EXTRA_FROM_INTERNAL:Ljava/lang/String; = "fromInteral"

.field private static final TAG:Ljava/lang/String; = "Mms/NotificationSettings"

.field private static final isMultiSim:Z


# instance fields
.field private isInternal:Z

.field mContext:Landroid/content/Context;

.field private mFromTab:Z

.field private mIsSwitchCheckState:Z

.field private mNotificationBackLight:Landroid/preference/CheckBoxPreference;

.field private mNotificationBackLightSim2:Landroid/preference/CheckBoxPreference;

.field private mNotificationLockScreen:Landroid/preference/CheckBoxPreference;

.field private mNotificationLockScreenSim2:Landroid/preference/CheckBoxPreference;

.field private mNotificationPopupReply:Landroid/preference/CheckBoxPreference;

.field private mNotificationPopupReplySim2:Landroid/preference/CheckBoxPreference;

.field private mNotificationPreviewMessages:Landroid/preference/PreferenceCategory;

.field private mNotificationPreviewMessagesSim2:Landroid/preference/PreferenceCategory;

.field private mNotificationReminder:Landroid/preference/ListPreference;

.field private mNotificationReminderSim2:Landroid/preference/ListPreference;

.field private mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

.field private mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

.field private mNotificationStatusBar:Landroid/preference/CheckBoxPreference;

.field private mNotificationStatusBarSim2:Landroid/preference/CheckBoxPreference;

.field private mNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

.field private mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSimSlot:I

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mSwitchStateReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private mVibrateWhenPrefSim2:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getSimSlotCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/settings/NotificationSettings;->isMultiSim:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    iput-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->isInternal:Z

    iput v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    iput-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mFromTab:Z

    new-instance v0, Lcom/android/mms/settings/NotificationSettings$3;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/NotificationSettings$3;-><init>(Lcom/android/mms/settings/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/settings/NotificationSettings$4;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/NotificationSettings$4;-><init>(Lcom/android/mms/settings/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitchStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/NotificationSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/settings/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setElementEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/settings/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setVibrateMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/settings/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setPreferenceSummary()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/settings/NotificationSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/settings/NotificationSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    return p1
.end method

.method private extractNotificationSound(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const v5, 0x7f0c04c3

    const v4, 0x7f0c04c2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const v3, 0x7f0c006e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
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

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReply:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReply:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_enable_popup_reply"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_enable_preview_message"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBar:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBar:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_enable_statusbar_preview_message"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReplySim2:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReplySim2:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_enable_popup_reply_sim2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationLockScreenSim2:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationLockScreenSim2:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_enable_preview_message_sim2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBarSim2:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBarSim2:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_enable_statusbar_preview_message_sim2"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    return-void
.end method

.method private setElementEnable()V
    .locals 3

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationBackLight:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationBackLight:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminder:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminder:Landroid/preference/ListPreference;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPreviewMessages:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPreviewMessages:Landroid/preference/PreferenceCategory;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReply:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReply:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationBackLightSim2:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationBackLightSim2:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminderSim2:Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminderSim2:Landroid/preference/ListPreference;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPreviewMessagesSim2:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPreviewMessagesSim2:Landroid/preference/PreferenceCategory;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReplySim2:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReplySim2:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setVibrateMenu()V

    return-void
.end method

.method private setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v4, "pref_key_msg_reminder_alert"

    iget v6, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v6, "0"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-ne v0, v8, :cond_3

    const/4 v6, 0x0

    aget-object v2, v3, v6

    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    if-ne v0, v9, :cond_4

    aget-object v2, v3, v8

    goto :goto_0

    :cond_4
    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    aget-object v2, v3, v9

    goto :goto_0
.end method

.method private setNotificationPreference()V
    .locals 5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_key_backlight"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationBackLight:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_ringtone"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MmsRingtonePreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    const-string v3, "pref_key_vibrateWhen_checkbox"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminder:Landroid/preference/ListPreference;

    const-string v3, "pref_key_preview_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPreviewMessages:Landroid/preference/PreferenceCategory;

    const-string v3, "pref_key_enable_popup_reply"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReply:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_enable_preview_message"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_enable_statusbar_preview_message"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBar:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->has2ndScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBar:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0480

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0481

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v3, "pref_key_backlight_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationBackLightSim2:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_ringtone_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MmsRingtonePreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

    const-string v3, "pref_key_vibrateWhen_checkbox_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_msg_reminder_alert_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminderSim2:Landroid/preference/ListPreference;

    const-string v3, "pref_key_preview_category_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPreviewMessagesSim2:Landroid/preference/PreferenceCategory;

    const-string v3, "pref_key_enable_popup_reply_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationPopupReplySim2:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_enable_preview_message_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationLockScreenSim2:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_enable_statusbar_preview_message_sim2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationStatusBarSim2:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private setPreferenceSummary()V
    .locals 20

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v13, "pref_key_ringtone"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_sim"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    if-eqz v16, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c006e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v3, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10406c8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    :cond_2
    :goto_1
    if-eqz v19, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c006e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v14

    if-nez v14, :cond_c

    const-string v2, "Mms/NotificationSettings"

    const-string v4, "ringtone is null just return"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_3
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    :cond_6
    :goto_4
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "title"

    aput-object v7, v6, v2

    const-string v7, "_data=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->setDefaultSoundSetting(Landroid/content/SharedPreferences;I)V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_6
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "title"

    aput-object v7, v6, v2

    const-string v7, "_data=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    goto :goto_6

    :catch_0
    move-exception v18

    :try_start_2
    const-string v2, "Mms/NotificationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when query ringtone title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_b
    throw v2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Landroid/media/Ringtone;->stop()V

    invoke-virtual {v14}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notification_sound"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/settings/NotificationSettings;->extractNotificationSound(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v16, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/settings/NotificationSettings;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    goto/16 :goto_2

    :cond_e
    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_f
    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method private setVibrateMenu()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_vibrateWhen_checkbox"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_vibrateWhen_checkbox_sim2"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->updateReminderAlert()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/settings/NotificationSettings;->updateNotificationAlert()V

    return-void

    :cond_6
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_vibrateWhen_checkbox"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_vibrateWhen_checkbox_sim2"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_9
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_vibrateWhen_checkbox"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_b
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_c
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationVibrateSim2:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_vibrateWhen_checkbox_sim2"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_d
    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtoneSim2:Lcom/android/mms/ui/MmsRingtonePreference;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private updateReminderAlert()V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminder:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminder:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/mms/settings/NotificationSettings$2;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/NotificationSettings$2;-><init>(Lcom/android/mms/settings/NotificationSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminder:Landroid/preference/ListPreference;

    const-string v2, "pref_key_msg_reminder_alert"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminderSim2:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationReminderSim2:Landroid/preference/ListPreference;

    const-string v2, "pref_key_msg_reminder_alert_sim2"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromInteral"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->isInternal:Z

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->isInternal:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/mms/settings/NotificationSettings;->isMultiSim:Z

    if-eqz v2, :cond_1

    const-string v2, "simSlot"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationOption(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    const-string v2, "Mms/NotificationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimSlot : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "fromTab"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "fromTab"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mFromTab:Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v2

    if-eqz v2, :cond_3

    iput v5, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    :cond_3
    sget-boolean v2, Lcom/android/mms/settings/NotificationSettings;->isMultiSim:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    if-ne v2, v5, :cond_5

    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/settings/NotificationSettings;->removePreferences()V

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setPreferenceSummary()V

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setNotificationPreference()V

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setElementEnable()V

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitchStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.intent.SwitchStatusChange"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_4
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setNotificationPreference()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0b03fc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/mms/settings/NotificationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/NotificationSettings$1;-><init>(Lcom/android/mms/settings/NotificationSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitchStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03fc
        :pswitch_0
    .end packed-switch
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

    const-string v1, "Mms/NotificationSettings"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "pref_key_enable_notifications"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/settings/NotificationSettings;->updateNotificationAlert()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mNotificationRingtone:Lcom/android/mms/ui/MmsRingtonePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mFromTab:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_enable_notifications"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setElementEnable()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setPreferenceSummary()V

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setVibrateMenu()V

    invoke-direct {p0}, Lcom/android/mms/settings/NotificationSettings;->setCheckMenu()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Mms/NotificationSettings"

    const-string v2, "onResume - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationOption(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onSaveLog(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v2, "REAL"

    invoke-static {v1, v2, v0}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_0
    const-string v0, "NEVER"

    goto :goto_0

    :sswitch_1
    const-string v0, "2MIN"

    goto :goto_0

    :sswitch_2
    const-string v0, "10MIN"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_key_msg_reminder_alert"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_key_msg_reminder_alert_sim2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/settings/NotificationSettings;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    :cond_1
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

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    return-void
.end method

.method protected removePreferences()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromInteral"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/settings/NotificationSettings;->isInternal:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationBacklight()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_backlight"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    sget-boolean v0, Lcom/android/mms/settings/NotificationSettings;->isMultiSim:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_backlight_sim2"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    sget-boolean v0, Lcom/android/mms/settings/NotificationSettings;->isMultiSim:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/settings/NotificationSettings;->mSimSlot:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_msg_reminder_alert_sim2"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/settings/NotificationSettings;->isInternal:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_enable_popup_reply"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_preview_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_enable_popup_reply_sim2"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_preview_category_sim2"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/NotificationSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->has2ndScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pref_key_preview_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "pref_key_preview_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v1, "pref_key_enable_preview_message"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method updateNotificationAlert()V
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

    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
