.class public Lcom/android/phone/callsettings/AnsweringCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static SVoiceLanguage:[Ljava/lang/String;


# instance fields
.field private endPowerKeyEndChecked:Z

.field private fromSettingSearch:Z

.field private mAccessibilityHeadTracking:Landroid/preference/CheckBoxPreference;

.field private mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

.field private mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

.field private mFolderKey:Landroid/preference/CheckBoxPreference;

.field private mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

.field private mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ko_KR"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "en_US"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "zh_CN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "es_ES"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fr_FR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "de_DE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "it_IT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ja_JP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ru_RU"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pt_BR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "en_GB"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "es_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/AnsweringCall;->SVoiceLanguage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private changeAirCallAccept(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AnsweringCall;->turnOnAirMotionEngine()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_call_accept"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->broadcastAirCallAcceptChanged(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_call_accept"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AnsweringCall;->broadcastAirCallAcceptChanged(Z)V

    goto :goto_0
.end method

.method public static getVoicetalkLocale()Ljava/util/Locale;
    .locals 5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/phone/callsettings/AnsweringCall;->SVoiceLanguage:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->SVoiceLanguage:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "US"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isAllAirMotionDisabled2014(Z)Z
    .locals 8
    .param p1    # Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_wake_up"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v7, "air_motion_scroll"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v7, "air_motion_turn"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    const-string v7, "air_motion_call_accept"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    :goto_0
    or-int v7, v2, v0

    or-int/2addr v7, v1

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_1

    :goto_1
    return v5

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "AnsweringCall"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .param p0    # Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method public static setVoicetalkLocale()Ljava/util/Locale;
    .locals 1

    invoke-static {}, Lcom/android/phone/callsettings/AnsweringCall;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/AnsweringCall;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private turnOnAirMotionEngine()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->isAllAirMotionDisabled2014(Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getVoiceCmdSummaryString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/callsettings/AnsweringCall;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v1

    const v3, 0x7f09031b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceCmdSummaryString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public handleVoiceCmd()V
    .locals 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voice_input_control_incomming_calls"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_2

    move v8, v9

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voice_input_dialog_show_never_again"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v3, :cond_1

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v11, "layout_inflater"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v11, 0x7f0400a6

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v11, 0x7f0a022a

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v11, "ring_mute_during_barge_in"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x7f0a0229

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v11, Lcom/android/phone/callsettings/AnsweringCall$1;

    invoke-direct {v11, p0}, Lcom/android/phone/callsettings/AnsweringCall$1;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f09031a

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v11, 0x7f090025

    new-instance v12, Lcom/android/phone/callsettings/AnsweringCall$3;

    invoke-direct {v12, p0, v0}, Lcom/android/phone/callsettings/AnsweringCall$3;-><init>(Lcom/android/phone/callsettings/AnsweringCall;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v11, 0x7f090028

    new-instance v12, Lcom/android/phone/callsettings/AnsweringCall$2;

    invoke-direct {v12, p0}, Lcom/android/phone/callsettings/AnsweringCall$2;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v9, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    new-instance v9, Lcom/android/phone/callsettings/AnsweringCall$4;

    invoke-direct {v9, p0}, Lcom/android/phone/callsettings/AnsweringCall$4;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v9, Lcom/android/phone/callsettings/AnsweringCall$5;

    invoke-direct {v9, p0}, Lcom/android/phone/callsettings/AnsweringCall$5;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "voice_input_control_incomming_calls"

    invoke-static {v9, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.android.phone"

    const-string v13, "CTRL"

    if-ne v8, v10, :cond_3

    const-string v9, "on"

    :goto_1
    invoke-static {v11, v12, v13, v9}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    return-void

    :cond_2
    move v8, v10

    goto/16 :goto_0

    :cond_3
    const-string v9, "off"

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "anykey_mode_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    const-string v3, "voice_cmd_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    const-string v3, "powerkey_end_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const-string v3, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    const-string v3, "folder_mode_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    const-string v3, "callsettings_answering_accessibility_tapping"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    const-string v3, "callsettings_answering_accessibility_headtracking"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityHeadTracking:Landroid/preference/CheckBoxPreference;

    const-string v3, "gesture_callaccept_setting_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "gesture_callaccept_setting_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "hw_home_key"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "anykey_mode_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "answering_call_in_external_screen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v3, "barge_in"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "voice_cmd_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "folder_mode_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FROM_ACCESSIBILITY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v3, "callsettings_answering_accessibility_tapping"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v3, "callsettings_answering_accessibility_headtracking"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AnsweringCall;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->finish()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "answering_accessibility_tapping"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "answering_call_in_external_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_4

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090326

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090324

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090025

    new-instance v5, Lcom/android/phone/callsettings/AnsweringCall$7;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AnsweringCall$7;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090028

    new-instance v5, Lcom/android/phone/callsettings/AnsweringCall$6;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AnsweringCall$6;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    const/4 v11, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "proximity_sensor"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "incall_power_button_behavior"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v6, :cond_7

    sget v6, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v6, v11, :cond_7

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "powerkey_end_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    sget-boolean v9, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    :cond_0
    :goto_0
    const-string v6, "hold_key_end_call"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const v9, 0x7f090863

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const v9, 0x7f090864

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSummary(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "answering_accessibility_tapping"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-lez v5, :cond_9

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    sget-boolean v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v6, :cond_a

    sget v6, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v6, v11, :cond_a

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "anykey_mode_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v9, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    :goto_2
    const-string v6, "answering_call_in_external_screen"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "answering_call_in_external_screen"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_c

    move v2, v7

    :goto_3
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-nez v2, :cond_d

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    :goto_4
    sget-boolean v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v6, :cond_e

    sget v6, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v6, v11, :cond_e

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_e

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "voice_cmd_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v9, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    :goto_5
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getVoiceCmdSummaryString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " is called by SettingSearch"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    sput-boolean v8, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    iput-boolean v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "voice_cmd_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v6, v9}, Lcom/android/phone/callsettings/AnsweringCall;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_4
    :goto_6
    const-string v6, "support_folder_hardkey"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "answeringmode_folder_open"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_11

    move v1, v7

    :goto_7
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    const-string v6, "gesture_callaccept"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "air_motion_call_accept"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_12

    move v3, v7

    :goto_8
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v6, "support_safetycare"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    iput-boolean v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    move v6, v8

    goto/16 :goto_1

    :cond_a
    iget-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "anykey_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_b

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_b
    move v6, v8

    goto :goto_9

    :cond_c
    move v2, v8

    goto/16 :goto_3

    :cond_d
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    goto/16 :goto_5

    :cond_f
    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "anykey_mode_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "powerkey_end_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_10
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v9, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lcom/android/phone/callsettings/AnsweringCall;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    move v1, v8

    goto/16 :goto_7

    :cond_12
    move v3, v8

    goto/16 :goto_8
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "========== onSharedPreferenceChanged : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v7, "anykey_mode_preference"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v5

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "anykey_mode"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.phone"

    const-string v10, "HOME"

    if-ne v1, v5, :cond_6

    const-string v7, "on"

    :goto_1
    invoke-static {v8, v9, v10, v7}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v7, "answering_call_in_external_screen"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v5

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "answering_call_in_external_screen"

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-lez v0, :cond_8

    move v4, v5

    :goto_3
    if-nez v4, :cond_9

    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    :goto_4
    const-string v7, "folder_mode_preference"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    move v2, v5

    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "answeringmode_folder_open"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string v5, "powerkey_end_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    :cond_3
    const-string v5, "gesture_callaccept_setting_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->changeAirCallAccept(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.phone"

    const-string v8, "WAVE"

    if-eqz v3, :cond_b

    const-string v5, "on"

    :goto_6
    invoke-static {v6, v7, v8, v5}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move v1, v6

    goto/16 :goto_0

    :cond_6
    const-string v7, "off"

    goto :goto_1

    :cond_7
    move v0, v6

    goto :goto_2

    :cond_8
    move v4, v6

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_a
    move v2, v6

    goto :goto_5

    :cond_b
    const-string v5, "off"

    goto :goto_6
.end method

.method public updateVoiceCmdChecked()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone"

    const-string v4, "CSET"

    invoke-static {v2, v3, v4}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "barge_in"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
