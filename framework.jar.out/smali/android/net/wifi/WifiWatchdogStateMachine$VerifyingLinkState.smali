.class Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mCheckAgainDefaultURL:Z

.field private mFirstDnsRequest:Z

.field private mPreviousBSSID:Ljava/lang/String;

.field private mRecoveryCanceledByScan:Z

.field private mSampleCount:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 11

    const/16 v10, 0xd

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v1, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/16 v4, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v1, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11402(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, "WifiWatchdogStateMachine"

    const-string v4, "mDnsCheck is null."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v4, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string v7, "WifiWatchdogStateMachine.DnsPinger"

    invoke-direct {v4, v5, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_b

    move v1, v2

    :goto_1
    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v4, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13802(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP Proxy is in use. Proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_6
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    :goto_3
    return-void

    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-eq v1, v9, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v1, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const-string v2, "enableHIPRI"

    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "[VerifyingLinkState] stop FEATURE_ENABLE_HIPRI"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7402(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_9
    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_3

    :cond_a
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v4

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$16000(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto/16 :goto_1

    :cond_c
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setEvaluationParameters()V
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18700(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    :cond_d
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->isUsingStaticIp()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_e
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-ne v1, v8, :cond_f

    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_f
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v1

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    const/16 v5, 0xbb8

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v4, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v8, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v3, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_11
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_12
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_13
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-ne v1, v8, :cond_14

    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_14
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto/16 :goto_2

    :cond_15
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 4

    const/4 v3, 0x0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x21014

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14700(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :sswitch_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x4

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v13, 0xb

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "WifiWatchdogStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v12, -0x1

    if-ne v8, v12, :cond_2

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CHINA TEST BINARY] Something wrong!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x1

    if-ne v8, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_5

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "could not identify a captive portal state due to the poor quality"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    if-lt v8, v12, :cond_a

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "WifiWatchdogStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Passed by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (mPassBytesVerifyingState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    if-lt v8, v12, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    :cond_8
    const-wide/16 v5, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    :cond_a
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "WifiWatchdogStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (mPassBytesVerifyingState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    if-ge v3, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_c

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    add-int/lit8 v13, v3, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setToDefaultURL()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_e
    if-nez v8, :cond_11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$7100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_14
    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v2

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "WifiWatchdogStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DNS result is useless. Pass through... ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_15
    const/4 v12, 0x2

    if-eq v2, v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    :cond_17
    const/4 v12, 0x1

    if-ne v2, v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_4

    :cond_1b
    const/4 v12, 0x4

    if-ne v2, v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    const/4 v13, 0x1

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DEFAULT_URL_STRING:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e

    const/4 v7, 0x3

    :cond_1c
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_1f
    const/4 v12, 0x3

    if-ne v2, v12, :cond_20

    const/4 v7, 0x3

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    if-eqz v12, :cond_1c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21013

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v13

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :sswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_21

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v1

    const/4 v12, 0x2

    if-ne v1, v12, :cond_22

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "WifiWatchdogStateMachine"

    const-string/jumbo v13, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_22
    const/4 v12, 0x4

    if-ne v1, v12, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_23
    const/4 v12, 0x1

    if-ne v1, v12, :cond_27

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_26

    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_6

    :cond_27
    const/4 v12, 0x3

    if-ne v1, v12, :cond_28

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :sswitch_4
    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CHINA TEST BINARY] Something wrong!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_29

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_NONE]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_2b

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_2a

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "It\'s a auto join AP"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_2d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_2e

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_DETECTED]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xb

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_30

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :pswitch_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_31

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_TIMEOUT]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xb

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_34

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_33

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_32

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_33
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v13, 0x9

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v13, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v14, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :cond_34
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_7

    :pswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_35

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_NO_INTERNET]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_36

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v13, 0x9

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xb

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :cond_36
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_8

    :cond_37
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_38

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_9

    :cond_38
    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "DNS - Passed, Captive Portal - No Internet"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_a

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v13

    if-ne v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x25014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20300()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_3

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_39

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "No need to process RSSI_PKTCNT_FETCH_SUCCEEDED in connecting state."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2100b

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_39
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/RssiPacketCountInfo;

    iget v9, v4, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_3a

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fetch RSSI succeed, rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_3b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20600(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v12, v14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_3c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x7530

    add-long/2addr v13, v15

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20600(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v12, v14

    goto/16 :goto_3

    :cond_3c
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_41

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7008(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_3d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Max avoid time elapsed. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " times"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_40

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xa

    if-lt v12, v13, :cond_3e

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "Max count elapsed."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_3f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_3f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x7530

    add-long/2addr v13, v15

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2100b

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    goto/16 :goto_3

    :cond_3f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_b

    :cond_40
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_41
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20900(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v12

    if-lt v9, v12, :cond_45

    move-object/from16 v0, p0

    iget v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v13

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21000(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v13

    if-lt v12, v13, :cond_14

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_42

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Good link detected, rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    const-wide/16 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_44

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_43

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2100b

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21200(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_3

    :cond_43
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_c

    :cond_44
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_45
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Link is still poor, time left="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_8
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "RSSI_FETCH_FAILED"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "enableHIPRI"

    invoke-virtual {v12, v13, v14}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_46

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "[VerifyingLinkState] stop FEATURE_ENABLE_HIPRI"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7402(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2101f

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21600(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_47

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_4a

    :cond_47
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_48

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_49

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :cond_49
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_4a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-eqz v12, :cond_4c

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_4b

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_4c
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_4e

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :goto_d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    goto/16 :goto_3

    :cond_4e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    goto :goto_d

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "EVENT_SCAN_TIMEOUT while VerifyingLinkState - reset scanning flag."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x21046

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21700(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_56

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_4f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_51

    :cond_4f
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_50

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    const v13, 0x2103e

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_51
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-eqz v12, :cond_53

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_52

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    const v13, 0x2103e

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2101f

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    :cond_53
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    if-eqz v12, :cond_55

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_54

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "resume the recovery qc canceled by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_55
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_56
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :sswitch_d
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_57

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] DELAYED_QUALITY_CHECK"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_5
        0x2100b -> :sswitch_6
        0x2101f -> :sswitch_d
        0x21023 -> :sswitch_0
        0x2102c -> :sswitch_4
        0x2103d -> :sswitch_a
        0x2103e -> :sswitch_c
        0x2103f -> :sswitch_9
        0x21046 -> :sswitch_b
        0x25015 -> :sswitch_7
        0x25016 -> :sswitch_8
        0x50000 -> :sswitch_2
        0x50005 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
