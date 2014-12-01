.class public Landroid/net/wifi/PppoeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/PppoeStateMachine$2;,
        Landroid/net/wifi/PppoeStateMachine$OnlineState;,
        Landroid/net/wifi/PppoeStateMachine$ConnectingState;,
        Landroid/net/wifi/PppoeStateMachine$ConnectState;,
        Landroid/net/wifi/PppoeStateMachine$OfflineState;,
        Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;,
        Landroid/net/wifi/PppoeStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final PPPOE_ENABLED:Z

.field private static final PPPOE_INTERFACE:Ljava/lang/String; = "ppp3"

.field private static final TAG:Ljava/lang/String; = "PppoeStateMachine"

.field private static final WIFI_INTERFACE_PROP:Ljava/lang/String; = "wifi.interface"

.field private static final WLAN_INTERFACE:Ljava/lang/String; = "wlan0"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

.field private mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

.field private mOldDns1:Ljava/lang/String;

.field private mOldDns2:Ljava/lang/String;

.field private mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

.field private mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

.field private mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

.field private mPppoeRunningTime:J

.field private mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.config.pppoe_enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/net/wifi/PppoeStateMachine;->PPPOE_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "PppoeStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine$DefaultState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    new-instance v0, Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    new-instance v0, Landroid/net/wifi/PppoeStateMachine$OfflineState;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine$OfflineState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    new-instance v0, Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine$ConnectState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    new-instance v0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    new-instance v0, Landroid/net/wifi/PppoeStateMachine$OnlineState;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/wifi/PppoeStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine$1;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.PPPOE_IP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    sget-boolean v0, Landroid/net/wifi/PppoeStateMachine;->PPPOE_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/PppoeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_0
    new-instance v0, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/PppoeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/net/wifi/PppoeStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/PppoeStateMachine;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/PppoeStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$102(Landroid/net/wifi/PppoeStateMachine;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OnlineState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/PppoeStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1702(Landroid/net/wifi/PppoeStateMachine;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    return-wide p1
.end method

.method static synthetic access$200(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/wifi/PppoeStateMachine;Landroid/os/Message;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/PppoeStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEConfig;)Landroid/net/wifi/PPPOEConfig;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$ConnectingState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OfflineState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    return-object v0
.end method

.method public static makePppoeStateMachine(Landroid/content/Context;)Landroid/net/wifi/PppoeStateMachine;
    .locals 1

    new-instance v0, Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/net/wifi/PppoeStateMachine;->start()V

    return-object v0
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "pppoe_result_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pppoe_result_error_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    iput-object p1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    return-void
.end method

.method private setPppoeState(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 5

    const-wide/16 v2, 0x0

    const-string v0, "pppoe"

    const-string v1, "PppoeStateMachine: getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    goto :goto_0
.end method
