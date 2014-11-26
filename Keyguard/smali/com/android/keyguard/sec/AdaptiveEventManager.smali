.class public Lcom/android/keyguard/sec/AdaptiveEventManager;
.super Ljava/lang/Object;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;,
        Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;
    }
.end annotation


# static fields
.field private static mSmallView:Landroid/widget/RemoteViews;

.field private static sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;


# instance fields
.field public ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

.field public ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field public ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field public ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field public ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final CITYID_CURRENT_LOCATION:Ljava/lang/String;

.field private final KEY_COUNTRY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_CITY:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ERROR_BUNDLE:Ljava/lang/String;

.field private final KEY_HIGH_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_LOW_TEMP:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final KEY_WEATHER_TEXT:Ljava/lang/String;

.field public WEATHERINFO_URI:Landroid/net/Uri;

.field private final WEATHER_INFO_TRUSTED:I

.field private mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSmallWeather:Landroid/view/View;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

.field mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

.field private mWeatherInfo:Ljava/lang/String;

.field private mWeatherInfoTrue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoTrue:Z

    const-string v9, "Location=\"%s\""

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "cityId:current"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->CITYID_CURRENT_LOCATION:Ljava/lang/String;

    const-string v9, "STATE"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_COUNTRY_NAME:Ljava/lang/String;

    const-string v9, "Accuweather"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    const-string v9, "aw_daemon_service_key_current_temp"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_TEMP:Ljava/lang/String;

    const-string v9, "aw_daemon_service_key_loc_code"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_CITY:Ljava/lang/String;

    const-string v9, "aw_daemon_service_key_high_temp"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_HIGH_TEMP:Ljava/lang/String;

    const-string v9, "aw_daemon_service_key_low_temp"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_LOW_TEMP:Ljava/lang/String;

    const-string v9, "aw_daemon_service_key_temp_scale"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_TEMP_SCALE:Ljava/lang/String;

    const-string v9, "aw_daemon_service_key_weather_icon_num"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_ICON_NUM:Ljava/lang/String;

    const-string v9, "aw_daemon_service_key_weather_text"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_WEATHER_TEXT:Ljava/lang/String;

    const-string v9, "Error_Code"

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_ERROR_BUNDLE:Ljava/lang/String;

    const/16 v9, 0xc8

    iput v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHER_INFO_TRUSTED:I

    new-instance v9, Lcom/android/keyguard/sec/AdaptiveEventManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/keyguard/sec/AdaptiveEventManager$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/keyguard/sec/AdaptiveEventManager$2;

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10}, Lcom/android/keyguard/sec/AdaptiveEventManager$2;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v9, Lcom/android/keyguard/sec/AdaptiveEventManager$3;

    invoke-direct {v9, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$3;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Lcom/android/keyguard/sec/AdaptiveEventManager$4;

    invoke-direct {v9, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$4;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->init()V

    const v9, 0x7f030042

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v10, 0x7f0b0112

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const-string v9, "samsung-neo-num3L"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "samsung-neo-num3L"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v10, 0x7f0b0114

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v10, 0x7f0b0117

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v10, 0x7f0b0116

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v10, 0x0

    new-instance v11, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const-string v12, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    iget-object v13, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    invoke-direct {v11, p0, v12, v13}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/view/View;)V

    aput-object v11, v9, v10

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_additional_weather"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v5, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_show_info"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v4, 0x1

    :goto_1
    const-string v9, "AdaptiveEventManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isWeatherEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "START"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v9, "PACKAGE"

    const-string v10, "com.android.keyguard"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "CP"

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v9, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->handleEmergencyUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager;
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/AdaptiveEventManager;)Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    return-object v0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    return-object v0
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "AdaptiveEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-"

    :cond_1
    return-object v0
.end method

.method private getWeatherTempUnit(I)I
    .locals 4
    .param p1    # I

    const v3, 0x7f0600fa

    const-string v1, "AdaptiveEventManager"

    const-string v2, "getWeatherTempUnit()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f020295

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020296

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getWeatherTempUnitSmall(I)I
    .locals 3
    .param p1    # I

    const-string v1, "AdaptiveEventManager"

    const-string v2, "getWeatherTempUnitSmall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f020297

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020298

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handleEmergencyUpdate()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "AdaptiveEventManager"

    const-string v1, "handleEmergencyUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mSmallView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mViewList[EMERGENCY] == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private handlePedoUpdate()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AdaptiveEventManager"

    const-string v1, "handlePedoUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mSmallView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mViewList[PEDOMETER] == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v29

    if-eqz v29, :cond_0

    const-string v29, "AdaptiveEventManager"

    const-string v30, "previous look, no adaptive event"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v29, "aw_daemon_service_key_weather_icon_num"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v29, "aw_daemon_service_key_current_temp"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v12

    const-string v29, "aw_daemon_service_key_temp_scale"

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v29, "Error_Code"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v29, "aw_daemon_service_key_loc_code"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const/16 v29, 0xc8

    move/from16 v0, v29

    if-eq v3, v0, :cond_1

    const-string v29, "AdaptiveEventManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "NetWork disabled : Don\'t refresh weath info : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v29, "AdaptiveEventManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "NetWork State is Fine : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setWeatherInfoTrue(Z)V

    if-nez v11, :cond_2

    const-string v29, "AdaptiveEventManager"

    const-string v30, "currentCityId is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setWeatherInfoTrue(Z)V

    :goto_1
    const-string v29, "AdaptiveEventManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handleUpdateWeather() [icon, temp, scale] = ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b010f

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0111

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0112

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0113

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherIconImageResources(I)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v29

    if-eqz v29, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isChinaLocation(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_4

    const-string v29, "aw_daemon_service_key_high_temp"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    const-string v29, "aw_daemon_service_key_low_temp"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v18

    const-string v29, "AdaptiveEventManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handleUpdateWeather() [high, low] = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0114

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0117

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0116

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0115

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0118

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getValidTemp(F)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getValidTemp(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v30

    add-int v20, v29, v30

    const/16 v29, 0x5

    move/from16 v0, v20

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v29, 0x1

    const/high16 v30, 0x41d80000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v29, 0x1

    const/high16 v30, 0x41d80000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v29, 0x1

    const/high16 v30, 0x41d80000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnit(I)I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnit(I)I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v29, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v29, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    const-string v29, "AdaptiveEventManager"

    const-string v30, "mAdaptiveEventCallback is not null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->updateContainer()V

    goto/16 :goto_0

    :cond_2
    const-string v29, "AdaptiveEventManager"

    const-string v30, "currentCityId is not null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const/16 v29, 0x1

    const/high16 v30, 0x41f00000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v29, 0x1

    const/high16 v30, 0x41f00000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v29, 0x1

    const/high16 v30, 0x41f00000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    :cond_4
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isShowHighLowTemp()Z

    move-result v29

    if-eqz v29, :cond_5

    const-string v29, "aw_daemon_service_key_high_temp"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    const-string v29, "aw_daemon_service_key_low_temp"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v18

    const-string v29, "AdaptiveEventManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handleUpdateWeather() [highTemp, lowTemp] = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0110

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b0119

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b011b

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b011a

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b011c

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getValidTemp(F)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getValidTemp(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnitSmall(I)I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnitSmall(I)I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const-string v29, "ar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string v29, "fa"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    :cond_6
    const-string v29, "AdaptiveEventManager"

    const-string v30, "Current language is Arabic"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->toDigitString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnit(I)I

    move-result v29

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_4

    :cond_8
    const-string v29, "AdaptiveEventManager"

    const-string v30, "mAdaptiveEventCallback is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private init()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCPName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/keyguard/sec/WeatherImageArchiveFactory;->make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateContainers(I)V
    .locals 2
    .param p1    # I

    const-string v0, "AdaptiveEventManager"

    const-string v1, "M updateContainers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->updateContainer(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdaptiveEventManager"

    const-string v1, "M mAdaptiveEventCallback == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getEmergencyEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getWeatherEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWeatherIconImageResources(I)I
    .locals 3
    .param p1    # I

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherIconImageResources(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;->getImage(I)I

    move-result v0

    return v0
.end method

.method protected getWeatherInfoTrue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoTrue:Z

    return v0
.end method

.method public isChinaLocation(Landroid/content/Context;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v9, ""

    if-nez p1, :cond_0

    const-string v0, "AdaptiveEventManager"

    const-string v1, "isChinaLocation: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->CITYID_CURRENT_LOCATION:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "AdaptiveEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "AdaptiveEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityname :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_7
    move-object v1, v9

    goto :goto_1
.end method

.method protected isPedometerExist()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAdaptiveEvent() requestClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$602(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v3

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$602(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v4

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto :goto_0
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Landroid/widget/RemoteViews;

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const-string v0, "AdaptiveEventManager"

    const-string v1, "Requested RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "AdaptiveEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveEvent() requestClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " smallView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bigView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v3

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewList[PEDOMETER].view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto :goto_0

    :cond_1
    const-string v0, "not null"

    goto :goto_1

    :cond_2
    const-string v0, "not null"

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v4

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewList[EMERGENCY].view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v4

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto/16 :goto_0
.end method

.method protected setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V
    .locals 2
    .param p1    # Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    const-string v0, "AdaptiveEventManager"

    const-string v1, "setAdaptiveEventContainerSmall()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    return-void
.end method

.method protected setWeatherInfoTrue(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoTrue:Z

    return-void
.end method

.method public toDigitString(I)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string v3, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Landroid/widget/RemoteViews;

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x132f

    const/16 v3, 0x132e

    sput-object p2, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    const-string v1, "AdaptiveEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdaptiveEvent() requestClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " smallView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bigView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    const-string v0, "AdaptiveEventManager"

    const-string v1, "Requested RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    const-string v0, "not null"

    goto :goto_0

    :cond_1
    const-string v0, "not null"

    goto :goto_1

    :cond_2
    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    sget-object v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v6

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    sget-object v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v6

    goto :goto_2
.end method
