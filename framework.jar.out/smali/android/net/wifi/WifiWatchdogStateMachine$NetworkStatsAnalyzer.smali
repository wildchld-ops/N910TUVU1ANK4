.class Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsAnalyzer"
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_PERIOD:I = 0x2710

.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final GOOD_RX_VALID_DURATION:I = 0x493e0

.field private static final MIN_STAY_TIME_AFTER_RSSI_CHECK:I = 0x1388

.field private static final PERIODIC_DNS_CHECK_INTERVAL:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.NetworkStatsAnalyzer"


# instance fields
.field private mCumulativePoorRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRxStats:I

.field private mDnsQueried:Z

.field private mGoodRxRate:I

.field private mGoodRxRssi:I

.field private mGoodRxTime:J

.field private mLastDnsCheckTime:J

.field private mMaybeUseStreaming:I

.field private mPollingStarted:Z

.field private mPublicDnsCheckProcess:Z

.field private mQCCancelledByScanOrDhcp:Z

.field private mRxBytes:J

.field private mRxHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxPackets:J

.field private mSYNPacketOnly:Z

.field private mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mSkipRemainingDnsResults:Z

.field private mTxBytes:J

.field private mTxPackets:J

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const/16 v0, -0xc8

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.SingDnsChecker"

    invoke-direct {v0, p1, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method checkPublicDns()V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    return-void
.end method

.method getCurrentRxStats()I
    .locals 3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRxStats : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 43

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    sparse-switch v37, :sswitch_data_0

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Ignore msg id : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    move/from16 v37, v0

    if-nez v37, :cond_0

    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    goto :goto_0

    :sswitch_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_1

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mPollingStarted : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    move/from16 v37, v0

    if-eqz v37, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    move/from16 v37, v0

    if-lez v37, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v38, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v38

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    move-wide/from16 v37, v0

    sub-long v37, v19, v37

    const-wide/32 v39, 0x493e0

    cmp-long v37, v37, v39

    if-gez v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    :cond_2
    const-wide/16 v37, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11400(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v37

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11400(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v37

    sub-long v37, v19, v37

    const-wide/32 v39, 0x1b7740

    cmp-long v37, v37, v39

    if-lez v37, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-wide/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11402(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-wide/from16 v22, v0

    const-string/jumbo v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    const-string/jumbo v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-wide/from16 v37, v0

    sub-long v4, v37, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    move-wide/from16 v37, v0

    sub-long v8, v37, v28

    long-to-int v0, v4

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_5

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffRx : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_6

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffTx : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v24, v0

    const-string/jumbo v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    const-string/jumbo v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v37, v0

    sub-long v6, v37, v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    move-wide/from16 v37, v0

    sub-long v10, v37, v26

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_7

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffRxBytes : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_8

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffTxBytes : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-wide/16 v37, 0x0

    cmp-long v37, v4, v37

    if-lez v37, :cond_13

    div-long v37, v6, v4

    :goto_1
    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v33, v0

    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_14

    div-long v37, v10, v8

    :goto_2
    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_9

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "rxBytesPerPacket : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_a

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "txBytesPerPacket : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->trimToSize()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    long-to-int v0, v4

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    move/from16 v37, v0

    if-eqz v37, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v37

    if-nez v37, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v37

    if-nez v37, :cond_d

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v37

    if-eqz v37, :cond_c

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "Start Rechecking Link Quality - Previous QC cancelled because (Scan / DHCP session) and QC overlapped."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_d
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mMaybeUseStreaming : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v37

    if-eqz v37, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    move/from16 v37, v0

    if-nez v37, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    move/from16 v37, v0

    if-nez v37, :cond_f

    if-lez v21, :cond_17

    :cond_f
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_10

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string/jumbo v38, "waiting dns responses or the quality result now!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-ltz v37, :cond_12

    const/16 v37, 0x1f4

    move/from16 v0, v33

    move/from16 v1, v37

    if-le v0, v1, :cond_12

    if-lez v21, :cond_16

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_11

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Good Rx!, don\'t need to keep evaluating quality! - id : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v6, v37

    if-lez v37, :cond_15

    long-to-int v0, v6

    move/from16 v31, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    const v38, 0x21028

    const/16 v39, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v31

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    :goto_4
    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    const v37, 0x21035

    const-wide/16 v38, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_13
    const-wide/16 v37, 0x0

    goto/16 :goto_1

    :cond_14
    const-wide/16 v37, 0x0

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v31

    goto :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    goto :goto_4

    :cond_17
    if-nez v18, :cond_1a

    if-nez v16, :cond_1a

    if-nez v17, :cond_1a

    const-wide/16 v37, 0x0

    cmp-long v37, v4, v37

    if-gtz v37, :cond_18

    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-wide/from16 v37, v0

    sub-long v37, v19, v37

    const-wide/32 v39, 0xea60

    cmp-long v37, v37, v39

    if-lez v37, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    const/16 v38, 0xd

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "PERIODIC DNS CHECK TRIGGER (SIMPLE CONNECTION TEST) - Last DNS check was "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-wide/from16 v39, v0

    sub-long v39, v19, v39

    const-wide/16 v41, 0x3e8

    div-long v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " seconds ago."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_19
    const/16 v18, 0x1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    const/16 v38, 0xd

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1b

    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    const v37, 0x21035

    const-wide/16 v38, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNoRxPacketsLimit:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-lez v37, :cond_20

    const-wide/16 v37, 0x56f4

    cmp-long v37, v6, v37

    if-gez v37, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-gez v37, :cond_1f

    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    long-to-int v0, v4

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const/16 v37, 0x38

    move/from16 v0, v37

    move/from16 v1, v35

    if-ge v0, v1, :cond_1d

    const/16 v37, 0x49

    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    const-wide/16 v37, 0x64

    mul-long v37, v37, v8

    div-long v37, v37, v4

    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v36, v0

    const/16 v37, 0x5a

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_1d

    const/16 v37, 0x6e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    add-int/lit8 v37, v35, -0xa

    move/from16 v0, v37

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    move/from16 v0, v33

    move/from16 v1, v35

    if-gt v0, v1, :cond_1d

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_1c

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "DNS queries and abnormal responses"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/16 v18, 0x1

    :cond_1d
    :goto_6
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_1e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mCumulativePoorRx.size : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2e

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_29

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v34, v34, v32

    goto :goto_7

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    move/from16 v37, v0

    if-eqz v37, :cond_26

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_21

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "No [SYN,ACK] or No subsequent transaction"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_24

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_22

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "suspicious No Rx state but staying in good Rx state now"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/16 v18, 0x1

    :goto_8
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_1d

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_23

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "could be in No service state during streaming!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/16 v18, 0x1

    goto/16 :goto_6

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x6

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_25
    const/16 v16, 0x1

    goto :goto_8

    :cond_26
    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_28

    const-wide/16 v37, 0x0

    cmp-long v37, v4, v37

    if-nez v37, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    long-to-int v0, v4

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    mul-int/lit8 v37, v37, 0x3

    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_3a

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x9

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_2a
    const/4 v14, 0x0

    :goto_a
    const/16 v37, 0x3

    move/from16 v0, v37

    if-ge v14, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v38, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_37

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2b

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "It\'s hard to say poor rx"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/16 v17, 0x0

    :cond_2c
    if-eqz v17, :cond_39

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_38

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2d

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "suspicious Poor Rx state but staying in good Rx state now"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/16 v18, 0x1

    const/16 v17, 0x0

    :cond_2e
    :goto_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-wide/from16 v37, v0

    sub-long v37, v19, v37

    const-wide/16 v39, 0x5dc

    cmp-long v37, v37, v39

    if-lez v37, :cond_3b

    const-wide/16 v37, 0x2

    cmp-long v37, v8, v37

    if-ltz v37, :cond_3b

    const/16 v37, 0x3b

    move/from16 v0, v37

    move/from16 v1, v35

    if-gt v0, v1, :cond_3b

    const/16 v37, 0x3e

    move/from16 v0, v35

    move/from16 v1, v37

    if-gt v0, v1, :cond_3b

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2f

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "SYN packets might be transmitted"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-lez v37, :cond_3c

    const/16 v37, 0x514

    move/from16 v0, v33

    move/from16 v1, v37

    if-le v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    :goto_d
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/16 v37, 0x5

    move/from16 v0, v30

    move/from16 v1, v37

    if-lt v0, v1, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v37, v0

    if-nez v37, :cond_31

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_30

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "need to check if there are problems on streaming service"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/16 v18, 0x1

    :cond_31
    if-nez v17, :cond_32

    if-eqz v16, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v19

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16502(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16600(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v37

    sub-long v37, v19, v37

    const-wide/16 v39, 0x1388

    cmp-long v37, v37, v39

    if-lez v37, :cond_3d

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_33
    :goto_e
    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14700(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    const/16 v39, 0xbb8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v40, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v40 .. v40}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v40

    const/16 v41, 0x0

    invoke-virtual/range {v37 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_36

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v37

    if-eqz v37, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-string v38, "DNS List is empty, need to check quality"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_36
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    goto/16 :goto_4

    :cond_37
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    :cond_38
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "Cumulative Rx is in poor status!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_b

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_b

    :cond_3b
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    goto/16 :goto_c

    :cond_3c
    const/16 v37, 0x0

    goto/16 :goto_d

    :cond_3d
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_3e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "The interval between evaluations is too short!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/16 v18, 0x1

    goto/16 :goto_e

    :sswitch_2
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    const-wide/16 v37, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14700(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-wide/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11402(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_0

    :sswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_3f

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v37 .. v40}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v12

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ne v12, v0, :cond_40

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_0

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string/jumbo v38, "wait until the responses about remained DNS Request arrive!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_40
    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v12, v0, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :goto_f
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_41

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mPublicDnsAvailable : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v39, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v39 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_f

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v37 .. v40}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    move/from16 v37, v0

    if-eqz v37, :cond_46

    const/16 v37, 0x2

    move/from16 v0, v37

    if-eq v13, v0, :cond_0

    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v13, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :goto_10
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_43

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mPublicDnsAvailable : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v39, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v39 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    :cond_44
    const/16 v37, 0x4

    move/from16 v0, v37

    if-ne v13, v0, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    const/16 v39, 0xbb8

    const/16 v40, 0x1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DEFAULT_URL_STRING:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v37 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    goto/16 :goto_0

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_10

    :cond_46
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_47

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[DNS_PING_RESULT] skip : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    move/from16 v37, v0

    if-nez v37, :cond_0

    const/16 v37, 0x2

    move/from16 v0, v37

    if-eq v13, v0, :cond_0

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v13, v0, :cond_48

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    goto/16 :goto_0

    :cond_48
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v37

    if-eqz v37, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-string v38, "single DNS Checking FAILURE"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v19

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16502(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21033 -> :sswitch_0
        0x21034 -> :sswitch_2
        0x21035 -> :sswitch_1
        0x50000 -> :sswitch_4
        0x50005 -> :sswitch_3
    .end sparse-switch
.end method

.method restartQCCancelledByScanOrDhcp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    return-void
.end method

.method setGoodRxStateNow(J)V
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    iput-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const/16 v0, -0xc8

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "lose Good Rx status."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    :cond_3
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "obtain Good Rx status [rssi : %ddbm, rate : %dMbps]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateLastDnsCheckTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    return-void
.end method
