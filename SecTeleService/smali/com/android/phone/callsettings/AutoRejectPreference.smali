.class public Lcom/android/phone/callsettings/AutoRejectPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    }
.end annotation


# instance fields
.field private mAutoRejectMaxCount:I

.field private mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

.field private mListIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectPreference;

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/AutoRejectPreference;I)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectPreference;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;I)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectPreference;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->setAutoRejectMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectPreference;
    .param p1    # Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    return-void
.end method

.method private getAutoRejectMode(Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 2
    .param p1    # I

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$1;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "autoreject_mode_preference_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    const-string v1, "autoreject_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    const-string v1, "autoreject_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "autoreject_mode_preference_outgoing_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    const-string v1, "autoreject_outgoingcall_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    const-string v1, "autoreject_outgoingcall_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIndexFromValue(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getValueFromIndex(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "AutoRejectPreference"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeAutoRejectDialog()Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->getIndexFromValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0902e7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090028

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$2;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080008

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$1;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private setAutoRejectMode(Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "feature_skt_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dcm_disable_block_reject_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 6
    .param p1    # Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    const/4 v5, 0x1

    const v3, 0x7f0902dc

    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_2

    const v3, 0x7f0902d9

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const v3, 0x7f0902c5

    :cond_1
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectBootReceiver;->updateAutoRejectNotification(Landroid/content/Context;)V

    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const v3, 0x7f0902da

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "auto_reject_outgoingcall"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v3, v3, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v4

    aput-object v4, v3, v5

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "reject_message_preference_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iput v5, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    const v3, 0x7f060012

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v3, v3, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->makeAutoRejectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    if-ne v2, p2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
