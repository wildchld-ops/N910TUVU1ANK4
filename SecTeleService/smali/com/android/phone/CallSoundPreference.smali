.class public Lcom/android/phone/CallSoundPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSoundPreference.java"


# instance fields
.field private mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

.field private mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

.field private mExtraVolPreference:Landroid/preference/CheckBoxPreference;

.field private mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

.field private mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

.field private mNaturalSound:Landroid/preference/CheckBoxPreference;

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mVoicemailNotificationSound:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/CallSoundPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallSoundPreference$1;-><init>(Lcom/android/phone/CallSoundPreference;)V

    iput-object v0, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallSoundPreference;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/phone/CallSoundPreference;

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallSoundPreference;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0    # Lcom/android/phone/CallSoundPreference;
    .param p1    # I
    .param p2    # Landroid/preference/Preference;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallSoundPreference;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z
    .locals 5
    .param p0    # Landroid/content/SharedPreferences;

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "button_voicemail_notification_vibrate_when_key"

    const-string v4, "never"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "always"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeSoundEQMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_soundsetting_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private setNaturalSound(Z)V
    .locals 5
    .param p1    # Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/phone/PhoneUtils;->naturalSoundBroadcast(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setNoiseReduction(Z)V
    .locals 5
    .param p1    # Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/phone/PhoneUtils;->noiseReductionBroadcast(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateEtcPreference()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "call_extra_volume"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "show_extra_vol"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v3, "support_easy_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallSoundPreference;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->lookupRingtoneName()V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const-string v3, "remove_voicemail_category"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private updateExtraRingerPreference()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "extra_ringer"

    const-string v1, "extra_ringer_default_on"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-lez v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private updateMyCallSoundPreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v1}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateNaturalSound()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_natural_sound"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->canEnableNaturalSound(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    const-string v2, "support_safetycare"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isSafetyAssistanceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateNoiseReduction()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_noise_reduction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v4, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 11
    .param p1    # I
    .param p2    # Landroid/preference/Preference;
    .param p3    # I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    const v0, 0x10406ca

    invoke-virtual {p0, v0}, Lcom/android/phone/CallSoundPreference;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_5

    const v0, 0x10406c8

    invoke-virtual {p0, v0}, Lcom/android/phone/CallSoundPreference;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090291

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected initSoundSetting(Z)V
    .locals 7
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_soundsetting_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    const-string v3, "button_ringtone_keytone_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/InCallSoundEQListPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    const-string v3, "button_noise_reduction_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v3, "button_natural_sound_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    const-string v3, "extra_ringtone_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    const-string v3, "showing_extra_vol_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "feature_dcm_u1"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->removeSoundEQMenu()V

    const-string v3, "button_ringtone_keytone_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v3, "showing_extra_vol_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v3, "button_noise_reduction_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->removeSoundEQMenu()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    const-string v3, "noise_suppression"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "default_noise_reduction"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_noise_reduction"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_a
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method protected initVoicemailSetting(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez p1, :cond_1

    const-string v2, "button_voicemail_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "button_voicemail_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v2, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;

    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallSoundPreference;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSoundPreference;->initSoundSetting(Z)V

    const-string v0, "remove_voicemail_category"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallSoundPreference;->initVoicemailSetting(Z)V

    :goto_0
    new-instance v0, Lcom/android/phone/CallSoundPreference$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallSoundPreference$2;-><init>(Lcom/android/phone/CallSoundPreference;)V

    iput-object v0, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallSoundPreference;->initVoicemailSetting(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_ringer"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_ringer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_extra_vol"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_extra_vol"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallSoundPreference;->setNoiseReduction(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallSoundPreference;->setNaturalSound(Z)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateNoiseReduction()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateMyCallSoundPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateNaturalSound()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateExtraRingerPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateEtcPreference()V

    return-void
.end method
