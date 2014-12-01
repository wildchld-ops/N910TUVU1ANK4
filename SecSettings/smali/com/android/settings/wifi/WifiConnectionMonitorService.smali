.class public Lcom/android/settings/wifi/WifiConnectionMonitorService;
.super Landroid/app/Service;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;,
        Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

.field private mConnectionMonitorThread:Ljava/lang/Thread;

.field mContext:Landroid/content/Context;

.field private mLowSignalTimeCount:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

.field private mThreshold:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    new-instance v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiConnectionMonitorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return p1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    return v0
.end method


# virtual methods
.method addBlackList(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBlackList, ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already in the blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->printBlackList()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startSearch()V

    goto :goto_1
.end method

.method doWifiConnectionMonitoringPolicy()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    sget-boolean v2, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiConnectionMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    if-gt v0, v2, :cond_2

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    iget v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->isWifiSettingScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiConnectionMonitorService"

    const-string v3, "WifiSettingScreen, skip disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v5, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    goto :goto_0

    :cond_3
    const-string v2, "WifiConnectionMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnect and add to blacklist, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->addBlackList(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iput v5, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-boolean v1, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ConnectionMonitorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->register()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.REMOVE_BLACKLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand,  startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method printBlackList()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blacklist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method removeBlackList(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBlackList, ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopSearch()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->printBlackList()V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method startMonitor()V
    .locals 4

    const/16 v3, 0x3e9

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "start monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method startSearch()V
    .locals 2

    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "start searching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method stopMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "stop monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method stopSearch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "stop seraching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
