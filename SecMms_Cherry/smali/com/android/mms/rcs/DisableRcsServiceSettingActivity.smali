.class public Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "DisableRcsServiceSettingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MMS/DisableRcsServiceSettingActivity"

.field public static mRcsState:Lcom/android/mms/rcs/RcsState;


# instance fields
.field mContext:Landroid/content/Context;

.field public mRcsPref:Landroid/preference/CheckBoxPreference;

.field public mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0
    .param p1    # I

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const-string v0, "MMS/DisableRcsServiceSettingActivity"

    const-string v1, "onCreate STATR!!!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/android/mms/rcs/RcsState;

    invoke-direct {v0}, Lcom/android/mms/rcs/RcsState;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    sget-object v0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateNotInitialized()V

    const-string v0, "pref_key_rcs_service"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsPref:Landroid/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v1, p0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsPref:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/rcs/settings/RcsSetting;-><init>(Landroid/app/Activity;Landroid/preference/CheckBoxPreference;Lcom/android/mms/rcs/RcsState;)V

    iput-object v0, p0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/mms/rcs/DisableRcsServiceSettingActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v1, v1, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
