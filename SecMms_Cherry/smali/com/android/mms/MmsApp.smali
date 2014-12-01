.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field private static final STRICT_MODE:Z = false

.field public static final TAG:Ljava/lang/String; = "Mms/MmsApp"

.field private static mContext:Landroid/content/Context;

.field private static sCreated:Z

.field private static sMmsApp:Lcom/android/mms/MmsApp;

.field private static sOldLocale:Ljava/util/Locale;

.field private static sPrefExist:Z


# instance fields
.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mCallStateListener2:Landroid/telephony/PhoneStateListener;

.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field public mDataSwitchDialog:Z

.field private mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    sput-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/android/mms/MmsApp;->sPrefExist:Z

    sput-boolean v1, Lcom/android/mms/MmsApp;->sCreated:Z

    sput-object v0, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    new-instance v0, Lcom/android/mms/MmsApp$2;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$2;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/MmsApp$4;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$4;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/mms/MmsApp$5;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$5;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCallStateListener2:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/MmsApp;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/MmsApp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initCountryIso()V
    .locals 3

    const-string v0, "Mms/MmsApp"

    const-string v1, "initCountryIso"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got country "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    new-instance v0, Lcom/android/mms/MmsApp$3;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$3;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    const-string v0, "Mms/MmsApp"

    const-string v1, "initCountryIso"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onLocaleChanged()V
    .locals 2

    const-string v0, "Mms/MmsApp"

    const-string v1, "on locale changed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    return-void
.end method

.method private registerCallStateListener()V
    .locals 3

    const/16 v2, 0x20

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCallStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    const-string v0, "Mms/MmsApp"

    const-string v1, "registerCallStateListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterCallStateListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const-string v0, "Mms/MmsApp"

    const-string v1, "unregisterCallstateListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public IsCreated()Z
    .locals 3

    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/MmsApp;->sCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/MmsApp;->sCreated:Z

    return v0
.end method

.method protected closeOnUnavailable()V
    .locals 2

    const-string v0, "Mms/MmsApp"

    const-string v1, "closeOnUnavailable: Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiSimTelephonyManager()Landroid/telephony/MultiSimTelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MultiSimTelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public initViewCache()V
    .locals 0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->fillCache()V

    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->fillCache()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(), newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/MmsApp;->onLocaleChanged()V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->initOldDateOrder()V

    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->clearCache()V

    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(), newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadChameleonFromPreference(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 8

    const/4 v7, 0x1

    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    iget-object v4, p0, Lcom/android/mms/MmsApp;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v4, 0x7f0e000c

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->setTheme(I)V

    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v4, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-static {v4}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    sget-object v5, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/TelephonyPermission;->startOperationModeMonitor(Landroid/content/Context;)V

    const-string v4, "com.android.mms_preferences"

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    sput-boolean v7, Lcom/android/mms/MmsApp;->sPrefExist:Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Mms/MmsApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/mms/MmsApp;->sPrefExist:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setDefaultPreference(Landroid/content/Context;Z)V

    :goto_0
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initCountryIso()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/mms/MmsApp;->registerCallStateListener()V

    :cond_1
    invoke-static {p0, v7}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/rcs/RcsOwnCapsManager;->init()V

    :cond_2
    sput-boolean v7, Lcom/android/mms/MmsApp;->sCreated:Z

    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/android/mms/poi/PoiReflector;->init(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Mms/MmsApp"

    const-string v5, "SAirMessage int()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/bstairmessage/AirMessageReflector;->init(Landroid/content/Context;)V

    const-string v4, "Mms/MmsApp"

    const-string v5, "SAirMessage int()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->init(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->init(Landroid/content/Context;)V

    :cond_6
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/mms/MmsApp$1;

    invoke-direct {v4, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-static {v4}, Lcom/android/mms/rcs/RcsChatManager;->runningUncompletedRcsJob(Landroid/content/Context;)V

    :cond_7
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-static {v4}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/transaction/ReservationManager;->resetAfterConnected()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDefaultAppChanged(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/AutoConfigurationReader;->init(Landroid/content/Context;)Z

    :cond_8
    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.ims.android"

    invoke-static {v4, v5}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.rcs"

    invoke-static {v4, v5}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.imsservice"

    invoke-static {v4, v5}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    const-string v4, "Mms/MmsApp"

    const-string v5, "RCS got enabled!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/rcs/RcsOwnCapsManager;->registerFtDisabler()V

    :cond_b
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-static {v4, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setDefaultPreference(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 2

    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/MmsApp;->unRegisterCallStateListener()V

    :cond_0
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    sget-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-static {v0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->forceReleasePermission()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/MmsApp"

    const-string v1, "SAirMessage Destory()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->Destory()V

    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate() after SAirMessage.Destory"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    invoke-static {}, Lcom/android/mms/glance/GlanceUtils;->closeGlanceDB()V

    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
