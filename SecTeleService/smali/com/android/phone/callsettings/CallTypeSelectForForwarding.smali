.class public Lcom/android/phone/callsettings/CallTypeSelectForForwarding;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForForwarding.java"


# static fields
.field public static mSimId:I


# instance fields
.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private notSupportVideoCHN()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    if-eq v2, v0, :cond_0

    const-string v2, "ril.MSIMM"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v4, "CallSettingTab"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    const-string v4, "CallTypeSelectForForwarding"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimId from bundle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, "CallTypeSelectForForwarding"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v4, 0x7f06000e

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v4, "button_voicecall"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    const-string v4, "button_videocall"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hasVTSupport()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "common_volte_vt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->notSupportVideoCHN()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_5
    return-void

    :cond_6
    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->finish()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CallSettingTab"

    sget v3, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CallSettingTab"

    sget v3, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallTypeSelectForForwarding"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    :goto_0
    const-string v0, "CallTypeSelectForForwarding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    goto :goto_0
.end method
