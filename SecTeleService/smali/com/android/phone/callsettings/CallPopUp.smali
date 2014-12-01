.class public Lcom/android/phone/callsettings/CallPopUp;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallPopUp.java"


# instance fields
.field private mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

.field private mPopupOverlay:Landroid/preference/CheckBoxPreference;

.field private mSecondScreenCall:Landroid/preference/CheckBoxPreference;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/CallPopUp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallPopUp$1;-><init>(Lcom/android/phone/callsettings/CallPopUp;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallPopUp;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CallPopUp;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallPopUp;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/CallPopUp;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallPopUp;->updateIncoimgPopupForWFC(Z)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "CallPopUp"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateCallSettingsByTPhone(I)V
    .locals 4
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupOverlay:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupOverlay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private updateInCallOverlayPopup()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInCallOverlayPopup : isCalling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallPopUp;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupOverlay:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupOverlay:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateIncoimgPopupForWFC(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "popup_incoming_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updatePopupIncomingCallPreference()V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "popup_incoming_call"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "updatePopupIncomingCallPreference : Enable SUPPORT_INCOMINGCALL_POPUP"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallPopUp;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "popup_incoming_call"

    const-string v0, "default_incomingcall_popup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "popup_incoming_call"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "updatePopupIncomingCallPreference : popup_incoming_call is true"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallPopUp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "updatePopupIncomingCallPreference : popup_incoming_call is false"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallPopUp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateSecondScreenPreference()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "second_screen_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "updateSecondScreenPreference : second_screen_call is true"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallPopUp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "updateSecondScreenPreference : second_screen_call is false"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallPopUp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallPopUp;->addPreferencesFromResource(I)V

    const-string v1, "call_popup_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallPopUp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    const-string v1, "call_overlay_popup_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallPopUp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupOverlay:Landroid/preference/CheckBoxPreference;

    const-string v1, "second_screen_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallPopUp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v1, "support_second_screen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09030e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09030c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09030d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    new-instance v1, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getActivity()Landroid/app/Activity;

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

    const-string v2, "feature_ctc"

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

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallPopUp;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->finish()V

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

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupOverlay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_overlay_popup_preference"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "second_screen_call"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "popup_incoming_call"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gsm_popup_incoming_call"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "popup_incoming_call"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallPopUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gsm_popup_incoming_call"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallPopUp;->updateInCallOverlayPopup()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallPopUp;->updatePopupIncomingCallPreference()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallPopUp;->updateSecondScreenPreference()V

    const-string v3, "feature_skt_tphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKT Phone app mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallPopUp;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallPopUp;->updateCallSettingsByTPhone(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v3}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v3}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallPopUp;->updateIncoimgPopupForWFC(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
