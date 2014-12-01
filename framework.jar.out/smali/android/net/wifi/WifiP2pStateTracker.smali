.class public Landroid/net/wifi/WifiP2pStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "WifiP2pStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiP2pStateTracker$1;,
        Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;
    }
.end annotation


# static fields
.field private static final LOGV:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final TAG:Ljava/lang/String; = "WifiP2pStateTracker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSamplingDataTracker:Landroid/net/SamplingDataTracker;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiP2pStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    new-instance v0, Landroid/net/SamplingDataTracker;

    invoke-direct {v0}, Landroid/net/SamplingDataTracker;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiP2pStateTracker;->setTeardownRequested(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reconnect()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public reconnectDualMMS(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3

    const-string v0, "WifiP2pStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .locals 0

    return-void
.end method

.method public setRadio(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3

    const-string v0, "WifiP2pStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .locals 0

    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .locals 0

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    iput-object p2, p0, Landroid/net/wifi/WifiP2pStateTracker;->mCsHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;-><init>(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/wifi/WifiP2pStateTracker$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mWifiP2pStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/WifiP2pStateTracker;->mWifiP2pStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;I)V
    .locals 0

    return-void
.end method

.method public teardown()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1
.end method

.method public teardownDualMMS(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
