.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.super Lcom/android/internal/util/StateMachine;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;
    }
.end annotation


# static fields
.field private static final COMMAND_BASE:I = 0x7d0

.field private static final COMMAND_TURN_OFF:I = 0x7d2

.field private static final COMMAND_TURN_ON:I = 0x7d1

.field private static final EVENT_ADD_DEFAULT_ROUTE:I = 0x3ef

.field private static final EVENT_APN_AVAILABLE:I = 0x3ed

.field private static final EVENT_APN_UNAVAILABLE:I = 0x3ee

.field private static final EVENT_BASE:I = 0x3e8

.field private static final EVENT_CONNECTED:I = 0x44e

.field private static final EVENT_CONNECTING:I = 0x44d

.field private static final EVENT_CONNECTIVITY_ACTION:I = 0x3e9

.field private static final EVENT_DATABASE_CHANGED:I = 0x3ea

.field private static final EVENT_DISCONNECTED:I = 0x451

.field private static final EVENT_DISCONNECTING:I = 0x450

.field private static final EVENT_ENABLE_CHANGED:I = 0x3eb

.field private static final EVENT_ENT_CONNECTION_CHANGED:I = 0x3f3

.field private static final EVENT_FALLBACK_CHANGED:I = 0x3ec

.field private static final EVENT_LOCALE_CHANGED:I = 0x3fd

.field private static final EVENT_NOTIFICATION_DISMISSED:I = 0x400

.field private static final EVENT_REMOVE_ADD_LOOKUP_RULE:I = 0x3f1

.field private static final EVENT_REMOVE_DEFAULT_ROUTE:I = 0x3f0

.field private static final EVENT_RETRY_TURN_ON_CONNECTION:I = 0x3f4

.field private static final EVENT_ROAMING_STATE_CHANGED:I = 0x3f5

.field private static final EVENT_SUSPENDED:I = 0x44f

.field private static final EVENT_UNKNOWN:I = 0x452

.field private static final EVENT_USER_BACKGROUND:I = 0x3ff

.field private static final EVENT_USER_FOREGROUND:I = 0x3fe

.field private static final EVENT_WIFI_OFFLOAD_CHANGED:I = 0x3f2

.field private static final MAX_CONTAINERS:I = 0x64

.field private static final MAX_RETRY:I = 0x3

.field private static final RETRY_DELAY:I = 0x1388


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnAvailable:Z

.field private mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

.field private mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

.field private mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

.field private mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

.field private mEnabled:Z

.field private mEntDataEnabled:Z

.field private mEntDefRouteEnabled:Z

.field private mEntLookupEnabled:Z

.field private mEntMasqEnabled:Z

.field private mFallbackToDefault:Z

.field private mFirewallRulesEnabled:Z

.field private mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

.field private mIface:Ljava/lang/String;

.field private mNetworkType:I

.field private mNotifying:Z

.field private mOffloadToWifi:Z

.field private mRejectDefaultEnabled:Z

.field private mRetryCount:I

.field private mRoamingDataAllowed:Z

.field private mState:Landroid/net/NetworkInfo$State;

.field private mUidRulesEnabled:Z

.field private mUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandles:Ljava/util/List;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntConnectivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntMasqEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntLookupEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRulesEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDefRouteEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRejectDefaultEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFirewallRulesEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->connectivityType(Ljava/lang/String;)I
    invoke-static {p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->initSettingsAndUids()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->contains(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Landroid/net/NetworkInfo$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableUidBlockRules(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendNetworkTypeChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onConnect()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isApnAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Collection;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidAllowRules(Ljava/util/Collection;Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFirewallRulesEnabled:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseDefaultRoute(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRejectDefault(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidMarkRules(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$6202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRulesEnabled:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSingleHandleUids()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addMediaUidRule()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMediaUidRule()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEntDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDisconnect()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addMediaUidRule()V
    .locals 4

    const-string v1, "addMediaUidRule"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDefaultNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "added Media uid rule"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/16 v2, 0x3f5

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->markEnterpriseUid(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception addMediaUidRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addUidEntry(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added uid entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private addUidRules(Ljava/lang/Integer;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUidRule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->markEnterpriseUid(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception addUidRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized changeUidAllowRules(Ljava/util/Collection;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidAllowRule(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez p2, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidAllowRule(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized changeUidMarkRules(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addUidRules(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeUidRules(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void
.end method

.method private contains(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enableEnterpriseDefaultRoute(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDefRouteEnabled:Z

    if-eq p1, v8, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v8

    iget v9, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v8, v9}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v8, v9, v4}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "added enterprise default route "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSingleHandleUids()[I

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget v7, v0, v3

    :try_start_0
    const-string/jumbo v8, "set dns for Media uid"

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v8, v9, v7, v7}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception setDnsInterfaceForUidRange:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSingleHandleUids()[I

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_2

    aget v7, v0, v3

    :try_start_1
    const-string v8, "clear dns for Media uid"

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v8, v9, v7, v7}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception clearDnsInterfaceForUidRange:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDefaultNetworkConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v8, v9, v4}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removed enterprise default route "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDefRouteEnabled:Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private enableEnterpriseLookup(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntLookupEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding enterprise lookup - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->addEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntLookupEnabled:Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "Adding enterprise lookup - fail - interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing enterprise lookup - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->removeEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Removing enterprise lookup - fail - interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableEnterpriseMasq(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntMasqEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding enterprise masq - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->addEnterpriseChain(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->addEnterpriseMasq(Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntMasqEnabled:Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "Adding enterprise masq - fail - interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing enterprise masq - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->removeEnterpriseChain(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->removeEnterpriseMasq(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Removing enterprise masq - fail - interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableRejectDefault(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRejectDefaultEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->addRejectDefault(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added reject default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRejectDefaultEnabled:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->removeRejectDefault(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removed reject default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableUidBlockRules(Z)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFirewallRulesEnabled:Z

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidAllowRule(IZ)V

    goto :goto_1

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFirewallRulesEnabled:Z

    goto :goto_0
.end method

.method private enableUidMarkRules(Z)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRulesEnabled:Z

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addUidRules(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeUidRules(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRulesEnabled:Z

    :cond_2
    return-void
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UNKNOWN EVENT"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "EVENT_CONNECTIVITY_ACTION"

    goto :goto_0

    :sswitch_1
    const-string v0, "EVENT_DATABASE_CHANGED"

    goto :goto_0

    :sswitch_2
    const-string v0, "EVENT_ENABLE_CHANGED"

    goto :goto_0

    :sswitch_3
    const-string v0, "EVENT_FALLBACK_CHANGED"

    goto :goto_0

    :sswitch_4
    const-string v0, "EVENT_APN_AVAILABLE"

    goto :goto_0

    :sswitch_5
    const-string v0, "EVENT_APN_UNAVAILABLE"

    goto :goto_0

    :sswitch_6
    const-string v0, "EVENT_REMOVE_DEFAULT_ROUTE"

    goto :goto_0

    :sswitch_7
    const-string v0, "EVENT_ADD_DEFAULT_ROUTE"

    goto :goto_0

    :sswitch_8
    const-string v0, "EVENT_REMOVE_ADD_LOOKUP_RULE"

    goto :goto_0

    :sswitch_9
    const-string v0, "EVENT_USER_FOREGROUND"

    goto :goto_0

    :sswitch_a
    const-string v0, "EVENT_USER_BACKGROUND"

    goto :goto_0

    :sswitch_b
    const-string v0, "EVENT_WIFI_OFFLOAD_CHANGED"

    goto :goto_0

    :sswitch_c
    const-string v0, "EVENT_ENT_CONNECTION_CHANGED"

    goto :goto_0

    :sswitch_d
    const-string v0, "EVENT_RETRY_TURN_ON_CONNECTION"

    goto :goto_0

    :sswitch_e
    const-string v0, "EVENT_ROAMING_STATE_CHANGED"

    goto :goto_0

    :sswitch_f
    const-string v0, "EVENT_LOCALE_CHANGED"

    goto :goto_0

    :sswitch_10
    const-string v0, "EVENT_NOTIFICATION_DISMISSED"

    goto :goto_0

    :sswitch_11
    const-string v0, "EVENT_CONNECTING"

    goto :goto_0

    :sswitch_12
    const-string v0, "EVENT_CONNECTED"

    goto :goto_0

    :sswitch_13
    const-string v0, "EVENT_SUSPENDED"

    goto :goto_0

    :sswitch_14
    const-string v0, "EVENT_DISCONNECTING"

    goto :goto_0

    :sswitch_15
    const-string v0, "EVENT_DISCONNECTED"

    goto :goto_0

    :sswitch_16
    const-string v0, "EVENT_UNKNOWN"

    goto :goto_0

    :sswitch_17
    const-string v0, "COMMAND_TURN_ON"

    goto :goto_0

    :sswitch_18
    const-string v0, "COMMAND_TURN_OFF"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_6
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_c
        0x3f4 -> :sswitch_d
        0x3f5 -> :sswitch_e
        0x3fd -> :sswitch_f
        0x3fe -> :sswitch_9
        0x3ff -> :sswitch_a
        0x400 -> :sswitch_10
        0x44d -> :sswitch_11
        0x44e -> :sswitch_12
        0x44f -> :sswitch_13
        0x450 -> :sswitch_14
        0x451 -> :sswitch_15
        0x452 -> :sswitch_16
        0x7d1 -> :sswitch_17
        0x7d2 -> :sswitch_18
    .end sparse-switch
.end method

.method private getEnabled()Z
    .locals 2

    const-string v0, "getEnabled"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isSplitBillingEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEntDataEnabled()Z
    .locals 2

    const-string v0, "getEntDataEnabled"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isTurnedOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getFallbackToDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getOffloadToWifi()Z
    .locals 2

    const-string v0, "getOffloadToWifi"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isWifiFallbackAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getRoamingDataAllowed()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v1, v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isRoamingAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSettings()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getFallbackToDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEntDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return-void
.end method

.method private getSingleHandleUids()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3f5

    aput v2, v0, v1

    return-object v0
.end method

.method private getUidsForApn(Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getUidApnTypeMapping()Ljava/util/Map;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUidsForApn apn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", writeToFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/uidapn"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/io/File;)Ljava/io/File;

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    iget-object v10, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v10}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addUidEntry(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setReadable result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    return-object v6

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private initSettingsAndUids()V
    .locals 2

    const-string v0, "initSettingsAndUids"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEntDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getFallbackToDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsFromDb(Z)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isAllowed()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowed() mOffloadToWifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDefRouteNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDefRouteNetwork:I
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFallbackToDefault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffloadToWifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEntDataEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRoamingDataAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDefRouteNetwork:I
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllowed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isApnAvailable()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v1, v0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1
.end method

.method private isDefaultNetworkConnected()Z
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in ConnectivityService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1
.end method

.method private isOffloadedToMobile()Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    iget-boolean v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    move v3, v2

    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in ConnectivityService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_0
.end method

.method private isOffloadedToWifi()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v4, v5, :cond_1

    iget-boolean v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    move v2, v5

    :cond_0
    :goto_0
    move v3, v2

    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in ConnectivityService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_0
.end method

.method private mark(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized onConnect()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v2, "onConnect"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterprise link properties - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseMasq(Z)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableUidMarkRules(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateEnterpriseSysProp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception onConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onDisconnect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v1, "onDisconnect"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableUidMarkRules(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseMasq(Z)V

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendNetworkTypeChangeBroadcast(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateEnterpriseSysProp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onFallbackToDefaultChanged(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeMediaUidRule()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "removed Media uid rule"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/16 v2, 0x3f5

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->unmarkEnterpriseUid(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception removeMediaUidRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeUidRules(Ljava/lang/Integer;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUidRule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->unmarkEnterpriseUid(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception removeUidRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendNetworkTypeChangeBroadcast(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.ent.conn.ENTERPRISE_NETWORK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "entNetworkType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sent ENTERPRISE_NETWORK_CHANGED - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    return-void
.end method

.method private setContainersForConnection()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "setContainersForConnection"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getContainersForConnection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUserHandle(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setContainersForConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUidAllowRule(IZ)V
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setEnterpriseBlockUidRule(IZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocking uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setEnterpriseBlockUidRule(IZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unblocking uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setUidAllowRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showNotification()V
    .locals 9

    const v5, 0x1040b69

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    const v2, 0x108011f

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040b68

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "EntConnectivity"

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "EntConnectivity"

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v4

    if-eqz v4, :cond_4

    const v2, 0x108011f

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    const v2, 0x108011e

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x1040b6b

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const v4, 0x1040b6c

    goto :goto_2

    :cond_6
    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    if-eqz v4, :cond_1

    const v2, 0x108011d

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040b6a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.enterprise.billing.notification_dismissed"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private slogSM(Ljava/lang/String;)V
    .locals 1

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private turnOffConnection()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->feature(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "File delete result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " torn down"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private turnOnConnection()I
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->feature(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v1, v6}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startUsingNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    :goto_2
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :pswitch_0
    iput v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRetryCount:I

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsFromDb(Z)Ljava/util/Collection;

    goto :goto_2

    :pswitch_1
    iget v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRetryCount:I

    iget v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRetryCount:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry connection scheduled at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRetryCount:I

    mul-int/lit16 v5, v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    const/16 v4, 0x3f4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRetryCount:I

    mul-int/lit16 v5, v5, 0x1388

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_2

    :cond_1
    const-string v4, "Max retries reached. "

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateEnterpriseSysProp()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "net.enterprise.ent1"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "net.enterprise.ent2"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "net.enterprise.ent1"

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEnterpriseSysProp: ent1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v2, "net.enterprise.ent2"

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEnterpriseSysProp: ent2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectivityType()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    return v0
.end method

.method public getOffloadedNetworkType()I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDefRouteNetwork:I
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    goto :goto_0
.end method

.method public getUidsFromDb(Z)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsForApn(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserHandle()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefRouteEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRejectDefaultEnabled:Z

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method public isEntDataEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z

    return v0
.end method

.method public isFallbackToDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    return v0
.end method

.method public isOffloadToWifi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method public onApnAvailableChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setUserHandle(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
