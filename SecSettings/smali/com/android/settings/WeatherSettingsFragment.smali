.class public Lcom/android/settings/WeatherSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WeatherSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;


# static fields
.field public static mAutoRefresh:I

.field public static mTempScale:I

.field public static pAppAutoRefresh:Landroid/preference/ListPreference;

.field public static pAppCurrentLocation:Landroid/preference/Preference;

.field public static pAppInfo:Landroid/preference/Preference;

.field public static pAppTempScale:Landroid/preference/ListPreference;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckChangeEventIgnore:Z

.field public mFromSView:Z

.field private mGuidePopupIgnore:Z

.field private mRefereshFlags:Z

.field private mSwitchView:Landroid/widget/Switch;

.field public mTargetDB:Ljava/lang/String;

.field private mWeatherAgreed:Z

.field private mWeatherEnabled:Z

.field private mode:I

.field private refreshItems:[Ljava/lang/String;

.field private refreshItemsValue:[Ljava/lang/String;

.field private refreshTimes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    const/4 v0, 0x3

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mCheckChangeEventIgnore:Z

    const-string v0, "lock_additional_weather"

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItemsValue:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshTimes:[I

    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x6
        0xc
        0x18
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/WeatherSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->refreshSummaryAndSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/WeatherSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->saveWeatherSharedPreferences()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/WeatherSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/WeatherSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/WeatherSettingsFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    return-object v0
.end method

.method private checkWeatherGuidePopupAvailable()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.LockShowInfoSettings.Weather"

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "DoNotShowDialog"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private getAutoRefreshTime(Landroid/content/Context;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x3

    if-nez p1, :cond_0

    move v8, v7

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "AUTO_REFRESH_TIME"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v7

    goto :goto_0
.end method

.method private getTempScale(Landroid/content/Context;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move v8, v7

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v7

    goto :goto_0
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_0

    move v9, v8

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "infotext"

    invoke-virtual {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppInfo:Landroid/preference/Preference;

    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppInfo:Landroid/preference/Preference;

    const v1, 0x7f090dac

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "unit"

    invoke-virtual {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    sput-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->getTempScale(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    const-string v0, "autorefresh"

    invoke-virtual {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    sput-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->getAutoRefreshTime(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    return-void
.end method

.method private refreshSummaryAndSwitch()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read mWeather : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppCurrentLocation:Landroid/preference/Preference;

    const v3, 0x7f090dba

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-ne v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->invalidate()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    :cond_5
    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppCurrentLocation:Landroid/preference/Preference;

    const v3, 0x7f090dbb

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private saveWeatherSharedPreferences()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings.LockShowInfoSettings.Weather"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setEntries()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "setEntries"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    new-array v2, v5, [Ljava/lang/String;

    const v3, 0x7f090db0

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f090daf

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshTimes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090db1

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090db2

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_2
    if-ne v0, v5, :cond_3

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090db3

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090db4

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090db5

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090db6

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItemsValue:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method private showWeatherGuidePopup(Z)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040081

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b0197

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const v5, 0x7f090d9b

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v5, 0x7f0b0198

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f090d97

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/WeatherSettingsFragment$8;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/WeatherSettingsFragment$8;-><init>(Lcom/android/settings/WeatherSettingsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v5, 0x7f090d9c

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePreferenceSummary()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "updatePreferenceSummary"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    const v3, 0x7f090daf

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v3, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_0
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    if-nez v1, :cond_4

    const v1, 0x7f090db1

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    sget v2, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    const v3, 0x7f090db0

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    if-ne v1, v2, :cond_5

    const v1, 0x7f090db2

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const v1, 0x7f090db3

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const v1, 0x7f090db4

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    const v1, 0x7f090db5

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const v1, 0x7f090db6

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public checkLocationAavilability()V
    .locals 8

    const v7, 0x7f0909d5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLocationAavilability locationMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090dbc

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090dbd

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0901ba

    new-instance v5, Lcom/android/settings/WeatherSettingsFragment$4;

    invoke-direct {v5, p0}, Lcom/android/settings/WeatherSettingsFragment$4;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$3;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$2;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0,gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0,network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "Write AGREEMENT : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "AGREEMENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090dbe

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090dbf

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090dc0

    new-instance v5, Lcom/android/settings/WeatherSettingsFragment$7;

    invoke-direct {v5, p0}, Lcom/android/settings/WeatherSettingsFragment$7;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$6;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$5;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "Write AGREEMENT : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "AGREEMENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x7d1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mode:I

    iget v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mode:I

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "AGREEMENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->onPositiveClick()V

    iput-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged isChecked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mCheckChangeEventIgnore:Z

    if-ne v4, v5, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/WeatherSettingsFragment;->mCheckChangeEventIgnore:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->checkWeatherGuidePopupAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    if-nez v4, :cond_2

    if-nez p2, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-direct {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->showWeatherGuidePopup(Z)V

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v5, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    if-nez v4, :cond_3

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    new-instance v0, Lcom/android/settings/CurrentLocationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/CurrentLocationDialogFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/CurrentLocationDialogFragment;->setDialogFragmentListener(Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Lcom/android/settings/CurrentLocationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iput-boolean p2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged SView - Weather : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "START"

    iget-boolean v7, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Kweather"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-eqz v4, :cond_10

    move v4, v5

    :goto_4
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "START"

    iget-boolean v7, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Cmaweather"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "START"

    iget-boolean v7, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Accuweather"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged LockScreen - Weather : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_show_info"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v3, v5

    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    const-string v4, "START"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_6
    const-string v4, "PACKAGE"

    const-string v7, "com.android.keyguard"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Kweather"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged SView - Weather : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "START"

    iget-boolean v7, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Kweather"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_8
    move v3, v6

    goto :goto_5

    :cond_9
    const-string v4, "START"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    const-string v4, "START"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_8
    const-string v4, "PACKAGE"

    const-string v7, "com.android.keyguard"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Cmaweather"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_b
    const-string v4, "START"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8

    :cond_c
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-eqz v4, :cond_d

    if-eqz v3, :cond_d

    const-string v4, "START"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_9
    const-string v4, "PACKAGE"

    const-string v7, "com.android.keyguard"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Accuweather"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_d
    const-string v4, "START"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "START"

    iget-boolean v7, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Cmaweather"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "START"

    iget-boolean v7, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v7, "Accuweather"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_10
    move v4, v6

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f04027c

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "sview"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    iget-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "weather_cover"

    iput-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called from SView Settings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Target DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->init()V

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->setEntries()V

    const-string v3, "currentlocation"

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    sput-object v3, Lcom/android/settings/WeatherSettingsFragment;->pAppCurrentLocation:Landroid/preference/Preference;

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v1, v6}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPositiveClick()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "onPositiveClick()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->checkLocationAavilability()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/WeatherSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/WeatherSettingsFragment$1;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "onPreferenceChange"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "unit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    sput v1, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weatherdaemon.action.UNIT_CHANGE_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "TEMPSCALE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->updatePreferenceSummary()V

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "autorefresh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weatherdaemon.action.AUTOREFRESH_CHANGE_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "AUTOREFRESH"

    sget v4, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->updatePreferenceSummary()V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->refreshSummaryAndSwitch()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->updatePreferenceSummary()V

    return-void
.end method
