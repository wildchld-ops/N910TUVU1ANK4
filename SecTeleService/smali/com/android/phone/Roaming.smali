.class public Lcom/android/phone/Roaming;
.super Landroid/preference/PreferenceActivity;
.source "Roaming.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Roaming$1;,
        Lcom/android/phone/Roaming$MyHandler;
    }
.end annotation


# static fields
.field static final preferredNetworkMode:I


# instance fields
.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

.field private mButtonRoamingMode:Landroid/preference/ListPreference;

.field private mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

.field private mHandler:Lcom/android/phone/Roaming$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/Roaming;->preferredNetworkMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/Roaming;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Roaming;)Landroid/preference/ListPreference;
    .locals 1
    .param p0    # Lcom/android/phone/Roaming;

    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Roaming;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/Roaming;

    iget-object v0, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "Roaming"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const v7, 0x7f06003d

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "Roaming"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/phone/Roaming;->addPreferencesFromResource(I)V

    :goto_0
    const-string v4, "system_select_home_only"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    new-instance v4, Lcom/android/phone/Roaming$MyHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Roaming$MyHandler;-><init>(Lcom/android/phone/Roaming;Lcom/android/phone/Roaming$1;)V

    iput-object v4, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    const-string v4, "roaming_mode_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const-string v4, "csc_chameleon_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const v5, 0x7f0800ba

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_0
    const-string v4, "system_select_home_only_entry"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const v5, 0x7f0800bc

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "roaming_settings"

    iget v5, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v4, v5}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v4, "roaming_settings_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    const-string v4, "roaming_guard_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/Roaming;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    if-eq v1, v6, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/phone/Roaming;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_5
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

    :cond_6
    iput v6, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Roaming;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "roaming_settings"

    iget v4, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    const-string v3, "roaming_settings"

    invoke-static {v3, v0}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "Roaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    :cond_0
    return v6

    :pswitch_0
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_setting_data_domestic"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_setting_data_international"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_data_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_data_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_sms_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const-string v1, "Roaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "Roaming"

    const-string v2, "onPreferenceTreeClick: preference == mButtonRoamingMode."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "roaming_settings"

    iget v2, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v1, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v3, "Roaming"

    const-string v6, "onResume"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    invoke-virtual {v6, v7}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    :goto_0
    const-string v3, "roaming_settings"

    iget v6, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-ne v0, v7, :cond_6

    iget-object v6, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    if-ne v2, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    if-ne v2, v4, :cond_5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_3
    const-string v3, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v8, v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    if-eq v0, v4, :cond_2

    if-eq v0, v8, :cond_2

    if-ne v0, v9, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    invoke-virtual {v6, v7}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    if-eq v0, v4, :cond_7

    if-eq v0, v8, :cond_7

    if-ne v0, v9, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
