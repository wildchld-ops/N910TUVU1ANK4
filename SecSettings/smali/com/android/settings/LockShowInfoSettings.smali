.class public Lcom/android/settings/LockShowInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockShowInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mClockSize_with_preview:Landroid/preference/PreferenceScreen;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMobileDataChargeDialog:Landroid/app/AlertDialog;

.field private mNewWeather:Landroid/preference/PreferenceScreen;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPermissionDialog:Landroid/app/AlertDialog;

.field private mShowclock:Landroid/preference/CheckBoxPreference;

.field private mSteps:Landroid/preference/CheckBoxPreference;

.field private mViewType:I

.field private mWeather:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    return-void
.end method

.method private Steps_setEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.shealth"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/LockShowInfoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockShowInfoSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->sendWeatherData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/LockShowInfoSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->showPermissionDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/LockShowInfoSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockShowInfoSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockShowInfoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LockShowInfoSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/LockShowInfoSettings;->saveSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/LockShowInfoSettings;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/LockShowInfoSettings;->clickItemWeather(Landroid/preference/Preference;)V

    return-void
.end method

.method private checkGuidePopupAvailable(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    const-string v0, "com.android.settings.LockShowInfoSettings.Weather"

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "DoNotShowDialog"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    return v0

    :cond_0
    const-string v0, "com.android.settings.LockShowInfoSettings.Pedometer"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private clickItemWeather(Landroid/preference/Preference;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_show_info"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    const-string v6, "START"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    const-string v6, "PACKAGE"

    const-string v7, "android"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CP"

    const-string v7, "Kweather"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_additional_weather"

    iget-object v8, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const-string v6, "START"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    const-string v6, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings.LockAddInfoSettings"

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v6, "DoNotShowDialogLocation"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v6, "LockShowInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doNotShowLocation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    iput v4, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->showMobileDateChargeEnableDialog()V

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    iput v4, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->showPermissionDialog()V

    goto :goto_3

    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    const-string v6, "START"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_4
    const-string v6, "PACKAGE"

    const-string v7, "android"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CP"

    const-string v7, "Cmaweather"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_additional_weather"

    iget-object v8, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_7
    const-string v6, "START"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    :cond_8
    move v4, v5

    goto :goto_5

    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    const-string v6, "START"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_6
    const-string v6, "PACKAGE"

    const-string v7, "android"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CP"

    const-string v7, "Accuweather"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_additional_weather"

    iget-object v8, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    :goto_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_a
    const-string v6, "START"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    :cond_b
    move v4, v5

    goto :goto_7
.end method

.method private saveSharedPreferences(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DoNotShowDialog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private sendWeatherData()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "START"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CP"

    const-string v2, "Cmaweather"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget v1, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->Steps_setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_weather"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private showGuidePopup(Landroid/preference/Preference;)V
    .locals 8

    const v3, 0x7f090d9c

    const v2, 0x7f090d9b

    const v7, 0x104000a

    const/high16 v6, 0x1040000

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    const v0, 0x7f090d97

    invoke-virtual {p0, v0}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockShowInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f040081

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0b0197

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0198

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    new-instance v0, Lcom/android/settings/LockShowInfoSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/LockShowInfoSettings$13;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/LockShowInfoSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/LockShowInfoSettings$14;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/LockShowInfoSettings$15;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/LockShowInfoSettings$15;-><init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V

    invoke-virtual {v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f090d9d

    invoke-virtual {p0, v0}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/settings/LockShowInfoSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/LockShowInfoSettings$16;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/LockShowInfoSettings$17;

    invoke-direct {v0, p0}, Lcom/android/settings/LockShowInfoSettings$17;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/LockShowInfoSettings$18;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/LockShowInfoSettings$18;-><init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V

    invoke-virtual {v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private showMobileDateChargeEnableDialog()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v7, p0, Lcom/android/settings/LockShowInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040087

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b00a6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0195

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    const v5, 0x7f091b3d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f091b3e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f090859

    new-instance v6, Lcom/android/settings/LockShowInfoSettings$5;

    invoke-direct {v6, p0}, Lcom/android/settings/LockShowInfoSettings$5;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/LockShowInfoSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/LockShowInfoSettings$6;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/LockShowInfoSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/LockShowInfoSettings$7;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermissionDialog()V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v6, 0x7f040225

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0b0557

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f091b75

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0b0558

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0b0559

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v6, Lcom/android/settings/LockShowInfoSettings$8;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/LockShowInfoSettings$8;-><init>(Lcom/android/settings/LockShowInfoSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f091b73

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f090859

    new-instance v7, Lcom/android/settings/LockShowInfoSettings$9;

    invoke-direct {v7, p0}, Lcom/android/settings/LockShowInfoSettings$9;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/settings/LockShowInfoSettings$10;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/LockShowInfoSettings$10;-><init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/settings/LockShowInfoSettings$11;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/LockShowInfoSettings$11;-><init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/LockShowInfoSettings$12;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/LockShowInfoSettings$12;-><init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updateClockSizeSummary()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateClockSizeSummaryK()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_additional_weather"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    const-string v7, "START"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isOSUpgrade()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "PACKAGE"

    const-string v8, "android"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v7, "CP"

    const-string v8, "Kweather"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_show_info"

    if-eqz p2, :cond_b

    :goto_4
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0, p2}, Lcom/android/settings/LockShowInfoSettings;->Steps_setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    const-string v7, "START"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v7, "PACKAGE"

    const-string v8, "com.android.keyguard"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const-string v7, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.android.settings.LockAddInfoSettings"

    invoke-virtual {v7, v8, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v7, "DoNotShowDialogLocation"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_show_info"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v3, v5

    :goto_5
    const-string v7, "LockShowInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doNotShowLocation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    iput v6, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->showMobileDateChargeEnableDialog()V

    goto/16 :goto_3

    :cond_5
    move v3, v6

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    if-nez v1, :cond_7

    iput v6, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->showPermissionDialog()V

    goto/16 :goto_3

    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    if-eqz v4, :cond_8

    const-string v7, "START"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_6
    const-string v7, "PACKAGE"

    const-string v8, "android"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "CP"

    const-string v8, "Cmaweather"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_8
    const-string v7, "START"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    if-eqz v4, :cond_a

    const-string v7, "START"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_7
    const-string v7, "PACKAGE"

    const-string v8, "android"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "CP"

    const-string v8, "Accuweather"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_a
    const-string v7, "START"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_7

    :cond_b
    move v5, v6

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v5, 0x10

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->addPreferencesFromResource(I)V

    const-string v3, "lock_screen_show_clock"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    const-string v3, "dualclock_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    const-string v3, "clock_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    const-string v3, "clock_size_with_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v3, "lock_info_weather"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    const-string v3, "lock_info_weather_new"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    const-string v3, "steps"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    const-string v3, "owner_info_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    const-string v3, "help_text"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eq v3, v9, :cond_2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-ne v3, v9, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.sec.android.app.shealth"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_additional_steps"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "android.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isWeatherDetailSettings()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPositiveClick()V
    .locals 5

    const/16 v3, 0x41

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->updateClockSizeSummary()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const v9, 0x104000a

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_clock"

    iget-object v7, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->updateState()V

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_2
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settings/LockShowInfoSettings;->clickItemWeather(Landroid/preference/Preference;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.sec.android.app.shealth"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090dd4

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090dd5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090dd6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/LockShowInfoSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/LockShowInfoSettings$1;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v1, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/LockShowInfoSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/LockShowInfoSettings$2;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/LockShowInfoSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/LockShowInfoSettings$3;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/LockShowInfoSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_additional_steps"

    iget-object v7, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    const-string v5, "owner_info_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne p2, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->showDialog()V

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v4, "oversea"

    const-string v5, "ril.currentplmn"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f091185

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f09180d

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/settings/LockShowInfoSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/LockShowInfoSettings$4;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v1, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "unlock_text"

    iget-object v7, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_b

    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v3, v4

    goto :goto_4
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->updateState()V

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method showDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/OwnerInfoSettings;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0901ee

    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/OwnerInfoSettings;->setDialogFragmentListener(Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;)V

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateState()V
    .locals 9

    const/16 v8, 0x41

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_additional_weather"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090dba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_show_info"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_screen_show_clock"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "dualclock_menu_settings"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f09099c

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_show_clock"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_clock_size"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "LockShowInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mClockSizeValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->updateClockSizeSummary()V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_show_clock"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    :goto_5
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->updateClockSizeSummaryK()V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_show_clock"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    :goto_6
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_additional_weather"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_additional_steps"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_8
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->Steps_setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_2

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_9
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "unlock_text"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_f

    :goto_a
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v3, "DCM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090dbb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto/16 :goto_1

    :cond_7
    move v3, v5

    goto/16 :goto_2

    :cond_8
    const v3, 0x7f09099d

    goto/16 :goto_3

    :cond_9
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_a
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_b
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_c
    move v3, v5

    goto/16 :goto_7

    :cond_d
    move v3, v5

    goto/16 :goto_8

    :cond_e
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_f
    move v4, v5

    goto :goto_a
.end method
