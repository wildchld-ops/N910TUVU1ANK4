.class public Lcom/android/phone/callsettings/GeneralSettingFragment;
.super Lcom/android/phone/CallFeaturesSetting;
.source "GeneralSettingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeSettings()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initGeneralSetting(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initSoundSetting(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initVideoSetting(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initVoicemailSetting(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initVoipSetting(Z)V

    return-void
.end method
