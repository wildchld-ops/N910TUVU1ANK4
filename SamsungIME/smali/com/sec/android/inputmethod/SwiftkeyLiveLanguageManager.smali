.class public Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;
.super Ljava/lang/Object;
.source "SwiftkeyLiveLanguageManager.java"


# static fields
.field public static final ACTION_ALARM_LIVELANGUAGE:Ljava/lang/String; = "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

.field private static final MESSAGE_DOWNLOAD_LIVE_LANGUAGE_PACK:I = 0x2

.field private static final MESSAGE_RETRY_UPDATE_LIVELANGUAGE:I = 0x1

.field private static final READY_HOUR:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static UNSTABLE_NETWORK_DELAY:I

.field private static languaeListRefreshListener:Lcom/touchtype_fluency/util/RefreshListener;

.field private static mCountry:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsEnableLiveLanguage:Z

.field private static mLanguage:Ljava/lang/String;

.field private static mNeedToUpdateLanguageList:Z

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mLanguage:Ljava/lang/String;

    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mCountry:Ljava/lang/String;

    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->UNSTABLE_NETWORK_DELAY:I

    new-instance v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$1;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$2;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$2;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->languaeListRefreshListener:Lcom/touchtype_fluency/util/RefreshListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguagePack(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    return p0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static downloadLiveLanguageByWifi(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->UNSTABLE_NETWORK_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private static declared-synchronized downloadLiveLanguagePack(Landroid/content/Context;)V
    .locals 7

    const-class v6, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    monitor-enter v6

    if-nez p0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloadInProgress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isUpdateAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$3;

    invoke-direct {v5}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$3;-><init>()V

    invoke-virtual {v4, v2, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v6

    return-void

    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static isUseVOResourceManager()Z
    .locals 2

    const-string v0, "VOHWRPANEL"

    const-string v1, "VOHWRPANEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VOHWRPANEL"

    const-string v1, "SSHWRPANEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "networkInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguageByWifi(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static registerLiveLanguageAlarm(Landroid/content/Context;)V
    .locals 15

    sget-boolean v4, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    if-nez v4, :cond_1

    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    new-instance v13, Landroid/content/Intent;

    const-string v4, "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v13, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v4, 0x5

    if-lt v12, v4, :cond_0

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    new-instance v14, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v14, v4, v5}, Ljava/util/Random;-><init>(J)V

    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0x3c

    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/16 v6, 0x3c

    invoke-virtual {v14, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    move-object v4, v11

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    :cond_1
    return-void
.end method

.method public static setLiveLanguage(Landroid/content/Context;Z)V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    :cond_1
    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mLanguage:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mCountry:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-boolean v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    :cond_2
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->registerLiveLanguageAlarm(Landroid/content/Context;)V

    :goto_0
    sput-boolean p1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    return-void

    :cond_3
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->unregisterLiveLanguageAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static unregisterLiveLanguageAlarm(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v3, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    if-eqz v3, :cond_0

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sput-boolean v4, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    :cond_0
    return-void
.end method

.method private static declared-synchronized updateLanguagePackList(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    const-class v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->isUseVOResourceManager()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->updateVOLanguagePackManager(Lcom/touchtype_fluency/util/RefreshListener;)V

    :cond_0
    invoke-static {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->languaeListRefreshListener:Lcom/touchtype_fluency/util/RefreshListener;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->refresh(Lcom/touchtype_fluency/util/RefreshListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v4

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguagePack(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized updateLiveLanguagePack(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLanguagePackList(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->TAG:Ljava/lang/String;

    const-string v3, "Internet limitation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLanguagePackList(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->TAG:Ljava/lang/String;

    const-string v3, "Internet is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
