.class public Lcom/android/phone/callsettings/VoipSettingFragment;
.super Lcom/android/phone/CallFeaturesSetting;
.source "VoipSettingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeSettings()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initGeneralSetting(Z)V

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initSoundSetting(Z)V

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVideoSetting(Z)V

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVoipSetting(Z)V

    return-void
.end method
