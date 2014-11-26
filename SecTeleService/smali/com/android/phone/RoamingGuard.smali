.class public Lcom/android/phone/RoamingGuard;
.super Landroid/preference/PreferenceActivity;
.source "RoamingGuard.java"


# instance fields
.field private mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private domesticCdmaDataRoamingGuardTreeClick()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RoamingGuard"

    const-string v1, "domesticCdmaDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "roam_guard_data_domestic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingGuardTreeClick()V
    .locals 2

    const-string v0, "RoamingGuard"

    const-string v1, "domesticCdmaVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_guard_call_domestic"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "roam_guard_call_domestic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingGuardTreeClick()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_guard_data_international"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "roam_guard_data_international"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaSmsRoamingGuardTreeClick()V
    .locals 2

    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaSmsRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_guard_sms_international"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "roam_guard_sms_international"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalCdmaVoiceRoamingGuardTreeClick()V
    .locals 2

    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_guard_call_international"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "roam_guard_call_international"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalGsmDataRoamingGuardTreeClick()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sprint_gsm_data_guard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalGsmSmsRoamingGuardTreeClick()V
    .locals 2

    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmSmsRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sprint_gsm_sms_guard"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sprint_gsm_sms_guard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalGsmVoiceRoamingGuardTreeClick()V
    .locals 2

    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sprint_gsm_voice_guard"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sprint_gsm_voice_guard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setPreferenceEnabledPhoneType()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xa

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    if-eq v1, v7, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, 0x5

    if-ne v1, v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "RoamingGuard"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "RoamingGuard"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "domestic_cdma_voice_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "domestic_cdma_data_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "international_cdma_voice_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "international_cdma_data_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "international_cdma_sms_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "international_gsm_voice_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "international_gsm_data_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "international_gsm_sms_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "international_gsm_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "domestic_cdma_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f09079b

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    const-string v2, "international_cdma_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f09079d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const-string v0, "RoamingGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->domesticCdmaVoiceRoamingGuardTreeClick()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->domesticCdmaDataRoamingGuardTreeClick()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaVoiceRoamingGuardTreeClick()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaDataRoamingGuardTreeClick()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaSmsRoamingGuardTreeClick()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmVoiceRoamingGuardTreeClick()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmDataRoamingGuardTreeClick()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmSmsRoamingGuardTreeClick()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "RoamingGuard"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_guard_call_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_guard_call_international_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_data_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_guard_data_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_data_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_data_international_forced"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "roam_guard_sms_international"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_voice_guard"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_data_guard"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_sms_guard"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method
