.class public Lcom/android/phone/CallModeler;
.super Landroid/os/Handler;
.source "CallModeler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallModeler$1;,
        Lcom/android/phone/CallModeler$CallResult;,
        Lcom/android/phone/CallModeler$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/android/internal/telephony/Connection$DisconnectCause;",
            "Lcom/android/services/telephony/common/Call$DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockUpdateCount:I

.field private final mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

.field private final mCallStateMonitors:[Lcom/android/phone/CallStateMonitor;

.field private mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

.field private mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

.field private final mConfCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mConfChanged:Z

.field private mIsOtaspNumber:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallModeler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPauseInProgress:Z

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPreviousFgCallNumber:Ljava/lang/String;

.field private mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallStateMonitor;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallGatewayManager;)V
    .locals 5
    .param p1    # Lcom/android/phone/CallStateMonitor;
    .param p2    # Lcom/android/internal/telephony/CallManager;
    .param p3    # Lcom/android/phone/CallGatewayManager;

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/phone/CallModeler;->mPreviousFgCallNumber:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    iput-boolean v3, p0, Lcom/android/phone/CallModeler;->mIsOtaspNumber:Z

    iput-boolean v3, p0, Lcom/android/phone/CallModeler;->mConfChanged:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_MISSED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MMI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->MMI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMS_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->IMS_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UAVAILABLE_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UAVAILABLE_CHANNEL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ANSWER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_USER_RESP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_BEARER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_BEARER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_RESOURCE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_RESOURCE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CIRCUIT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->TMP_FAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->TMP_FAIL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCH_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SWITCH_CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CHANNEL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_QOS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_QOS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACM_EXCEED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ACM_EXCEED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ROUTE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CHANNEL_UNACCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CHANNEL_UNACCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OP_DETERMINED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OP_DETERMINED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->PRE_EMPTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->PRE_EMPTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NON_SELECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NON_SELECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NET_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NET_OUT_OF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_DISCARD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ACCESS_DISCARD:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRED_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BARRED_IN_CUG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_UNAVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_DIGITAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->RESTRICTED_DIGITAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_TI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_IN_CUG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TRANSIT_NET:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_TRANSIT_NET:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCORRECT_MSG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCORRECT_MSG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->IE_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_TYPE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_TYPE_NON_EXIST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_NOT_COMP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->IE_NON_EXIST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_IE_CONTENTS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_IE_CONTENTS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP_CALL_STATE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_NOT_COMP_CALL_STATE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RECOVERY_TIMER_EXPIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->RECOVERY_TIMER_EXPIRY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INTERWORKING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INTERWORKING:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_CHANGED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_CHANGED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->STATUS_ENQUIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->STATUS_ENQUIRY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    iput v3, p0, Lcom/android/phone/CallModeler;->mBlockUpdateCount:I

    iput-object p1, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    iput-object v4, p0, Lcom/android/phone/CallModeler;->mCallStateMonitors:[Lcom/android/phone/CallStateMonitor;

    iput-object p2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    iput-object v4, p0, Lcom/android/phone/CallModeler;->mPhones:[Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallStateMonitor;->addListener(Landroid/os/Handler;)V

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public constructor <init>([Lcom/android/phone/CallStateMonitor;Lcom/android/internal/telephony/CallManager;[Lcom/android/internal/telephony/Phone;Lcom/android/phone/CallGatewayManager;)V
    .locals 6
    .param p1    # [Lcom/android/phone/CallStateMonitor;
    .param p2    # Lcom/android/internal/telephony/CallManager;
    .param p3    # [Lcom/android/internal/telephony/Phone;
    .param p4    # Lcom/android/phone/CallGatewayManager;

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/phone/CallModeler;->mPreviousFgCallNumber:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    iput-boolean v4, p0, Lcom/android/phone/CallModeler;->mIsOtaspNumber:Z

    iput-boolean v4, p0, Lcom/android/phone/CallModeler;->mConfChanged:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_MISSED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->MMI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->MMI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMS_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->IMS_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UAVAILABLE_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->UAVAILABLE_CHANNEL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ANSWER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_USER_RESP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_BEARER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_BEARER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_RESOURCE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_RESOURCE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CIRCUIT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->TMP_FAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->TMP_FAIL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCH_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->SWITCH_CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CHANNEL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_QOS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_QOS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACM_EXCEED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->ACM_EXCEED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ROUTE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CHANNEL_UNACCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->CHANNEL_UNACCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OP_DETERMINED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->OP_DETERMINED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->PRE_EMPTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->PRE_EMPTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NON_SELECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NON_SELECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NET_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NET_OUT_OF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_DISCARD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->ACCESS_DISCARD:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRED_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->BARRED_IN_CUG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_UNAVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_DIGITAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->RESTRICTED_DIGITAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_TI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_IN_CUG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TRANSIT_NET:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_TRANSIT_NET:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCORRECT_MSG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCORRECT_MSG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->IE_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_TYPE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_TYPE_NON_EXIST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_NOT_COMP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->IE_NON_EXIST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_IE_CONTENTS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_IE_CONTENTS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP_CALL_STATE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_NOT_COMP_CALL_STATE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->RECOVERY_TIMER_EXPIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->RECOVERY_TIMER_EXPIRY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INTERWORKING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->INTERWORKING:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_CHANGED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_CHANGED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->STATUS_ENQUIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->STATUS_ENQUIRY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    iput v4, p0, Lcom/android/phone/CallModeler;->mBlockUpdateCount:I

    iput-object v5, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    iput-object p1, p0, Lcom/android/phone/CallModeler;->mCallStateMonitors:[Lcom/android/phone/CallStateMonitor;

    iput-object p2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    iput-object p3, p0, Lcom/android/phone/CallModeler;->mPhones:[Lcom/android/internal/telephony/Phone;

    iput-object p4, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallStateMonitors:[Lcom/android/phone/CallStateMonitor;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/phone/CallStateMonitor;->addListener(Landroid/os/Handler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAwimUpdateInfo(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Lcom/android/internal/telephony/Connection;

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private createNewCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/services/telephony/common/Call;

    invoke-direct {v0, v1}, Lcom/android/services/telephony/common/Call;-><init>(I)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method private doUpdate(ZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallModeler;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/CallModeler;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/CallModeler;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_4

    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v7, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v1, :cond_7

    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0}, Lcom/android/phone/CallModeler;->getOtaTestPropertyKey()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/OtaUtils;->isUsCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/phone/CallModeler;->mIsOtaspNumber:Z

    :cond_6
    :goto_3
    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsOtaspNumber : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/CallModeler;->mIsOtaspNumber:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_f

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_f

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_10

    move v5, v4

    :goto_5
    move v6, v3

    :goto_6
    if-eqz v6, :cond_11

    if-nez v5, :cond_11

    move v3, v4

    :goto_7
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v5, v1, v3}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_8

    if-nez v6, :cond_a

    :cond_8
    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "usa_cdma_smc_fac_req"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "support_awim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_9
    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallModeler;->checkAwimUpdateInfo(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v6, "force update for TS9.6.1"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Lcom/android/services/telephony/common/Call;->setAwimUpdateInfo(I)V

    :cond_a
    invoke-direct {p0, v3, v1, v2}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v1

    if-nez p1, :cond_b

    if-eqz v1, :cond_3

    :cond_b
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    move v3, v2

    goto/16 :goto_2

    :cond_d
    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_8
    iput-boolean v3, p0, Lcom/android/phone/CallModeler;->mIsOtaspNumber:Z

    goto/16 :goto_3

    :cond_e
    move v3, v2

    goto :goto_8

    :cond_f
    move v3, v2

    goto/16 :goto_4

    :cond_10
    move v5, v2

    goto :goto_5

    :cond_11
    move v3, v2

    goto :goto_7

    :cond_12
    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "update skipped"

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "update skipped"

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0, p2}, Lcom/android/phone/CallModeler;->updateForConferenceCalls(Lcom/android/internal/telephony/Connection;Ljava/util/List;)Z

    goto :goto_9

    :cond_15
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v4}, Lcom/android/services/telephony/common/Call;->setState(I)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v4}, Lcom/android/services/telephony/common/Call;->setState(I)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_1a
    return-void

    :cond_1b
    move v5, v2

    move v6, v2

    goto/16 :goto_6
.end method

.method private getAssistedDialingNumber()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "isAssistedDialingNumber"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAssisted.getBoolean"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchFieldException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAutoRetrySetting()I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_auto_retry"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;",
            "Lcom/android/internal/telephony/Connection;",
            "Z)",
            "Lcom/android/services/telephony/common/Call;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallModeler;->createNewCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[put new call] callid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->setSimId(I)V

    :cond_2
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getCapabilitiesFor(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;Z)I
    .locals 18

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    :goto_1
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v3, :cond_14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToHoldCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    :goto_2
    move v13, v4

    :goto_3
    if-eqz p3, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17

    const/4 v4, 0x1

    :goto_4
    const/4 v7, 0x0

    const-string v8, "roaming_auto_dial"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v12, v7

    :goto_5
    if-eqz v2, :cond_0

    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    :cond_0
    :goto_6
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    :goto_7
    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    :cond_1
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-nez v7, :cond_2

    if-eqz v8, :cond_1b

    :cond_2
    const/4 v7, 0x0

    :goto_8
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/RejectWithTextMessageManager;->allowRespondViaSmsForCall(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)Z

    move-result v15

    const/4 v8, 0x0

    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    move v11, v8

    :goto_9
    const/4 v8, 0x0

    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v8

    :cond_3
    const-string v10, "feature_ctc"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-nez v10, :cond_1c

    const/4 v10, 0x1

    :goto_a
    and-int/2addr v9, v10

    if-eqz v2, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v10

    invoke-static {v2, v10}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    :goto_b
    and-int/2addr v2, v9

    :goto_c
    const/4 v9, 0x0

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v10, v0, :cond_4

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v10, v0, :cond_4

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v10, v0, :cond_5

    :cond_4
    const/4 v9, 0x1

    :cond_5
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v14

    const/4 v10, 0x0

    if-eqz v13, :cond_6

    const/4 v10, 0x1

    :cond_6
    if-eqz v3, :cond_1f

    or-int/lit8 v3, v10, 0x2

    :goto_d
    if-eqz v2, :cond_1e

    or-int/lit8 v2, v3, 0x10

    :goto_e
    if-eqz v6, :cond_7

    or-int/lit8 v2, v2, 0x4

    :cond_7
    if-eqz v5, :cond_8

    or-int/lit8 v2, v2, 0x8

    :cond_8
    if-eqz v15, :cond_9

    or-int/lit8 v2, v2, 0x20

    :cond_9
    if-eqz v7, :cond_a

    or-int/lit8 v2, v2, 0x40

    :cond_a
    if-eqz v4, :cond_b

    or-int/lit16 v2, v2, 0x80

    :cond_b
    if-eqz v12, :cond_c

    or-int/lit16 v2, v2, 0x100

    :cond_c
    if-eqz v11, :cond_d

    or-int/lit16 v2, v2, 0x200

    :cond_d
    if-eqz v8, :cond_e

    or-int/lit16 v2, v2, 0x400

    :cond_e
    if-eqz v9, :cond_f

    or-int/lit16 v2, v2, 0x800

    :cond_f
    if-eqz v14, :cond_10

    or-int/lit16 v2, v2, 0x1000

    :cond_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToSupportHold(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->okToSupportHold(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    goto/16 :goto_1

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_15
    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->okToHoldCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    :goto_f
    move v13, v4

    goto/16 :goto_3

    :cond_16
    const/4 v4, 0x0

    goto :goto_f

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_18
    const-string v5, "support_merge_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const/4 v5, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    goto/16 :goto_7

    :cond_1b
    move v7, v2

    goto/16 :goto_8

    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_1e
    move v2, v3

    goto/16 :goto_e

    :cond_1f
    move v3, v10

    goto/16 :goto_d

    :cond_20
    move v2, v9

    goto/16 :goto_c

    :cond_21
    move v2, v9

    goto/16 :goto_c

    :cond_22
    move v11, v8

    goto/16 :goto_9

    :cond_23
    move v12, v7

    goto/16 :goto_5
.end method

.method private getEarliestLiveConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1    # Lcom/android/internal/telephony/Call;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    move-wide v3, v7

    move-object v2, v0

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private getOtaTestPropertyKey()Z
    .locals 4

    const-string v0, "sys.hidden.otatest"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otaTestPropertyKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private handleModifyCallResult(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/phone/PhoneUtils;->isRequestingModifyCall:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->handleModifyCallException(Landroid/os/Message;)I

    move-result v1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    const/4 v3, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v3, v4}, Lcom/android/phone/CallModeler$Listener;->onModifyCall(ZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleModifyCallResult newCallType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f09083a

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToastForALongTime(I)V

    :goto_1
    const-string v2, "preserve_speaker_state_during_switch"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :cond_1
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    :cond_2
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->mFromVideoToVoice:Z

    :cond_3
    :goto_2
    const-string v2, "common_volte_in"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getAudioRouter()Lcom/android/phone/AudioRouter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/AudioRouter;->getAudioMode()I

    move-result v2

    sget v3, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v2, v3, :cond_4

    sget v3, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v6}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    const/4 v3, 0x0

    invoke-interface {v0, v5, v1, v3}, Lcom/android/phone/CallModeler$Listener;->onModifyCall(ZILjava/lang/String;)V

    goto :goto_3

    :cond_5
    const v2, 0x7f09083c

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto/16 :goto_1

    :cond_6
    sput-boolean v5, Lcom/android/phone/PhoneUtils;->mFromVideoToVoice:Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method private hasLiveCallInternal(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 6
    .param p1    # Lcom/android/internal/telephony/Connection;

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-eq v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "onDisconnect"

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOnMerge(I)V

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mFromVideoToVoice:Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallModeler;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/phone/CallNotifier;->saveActionMemoFilePath(I)V

    const-string v0, "feature_cdma_us"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_0
    move v3, v0

    :goto_1
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    :goto_2
    invoke-direct {p0, v4, p1, v2}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v0, v4}, Lcom/android/phone/CallModeler$Listener;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "feature_skt_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    return-void

    :cond_9
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_0
.end method

.method private onIncomingModifyCall(Lcom/android/internal/telephony/Connection;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/phone/CallNotifier;->saveActionMemoFilePath(I)V

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIncomingModifyCall proposedCallType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-ne v1, v6, :cond_c

    :cond_3
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->playUpgradeRequestTone()V

    :cond_5
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-ne v0, v7, :cond_b

    :cond_6
    if-ne v1, v8, :cond_b

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->playUpgradeRequestTone()V

    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isLowBatt()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f090841

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->respondModifyCall(Lcom/android/internal/telephony/Connection;Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingModifyCall CallStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->respondModifyCall(Lcom/android/internal/telephony/Connection;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->isIncomingModifyCall:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4}, Lcom/android/phone/CallModeler$Listener;->onModifyCall(ZILjava/lang/String;)V

    goto :goto_1

    :cond_b
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->respondModifyCall(Lcom/android/internal/telephony/Connection;Z)V

    goto/16 :goto_0

    :cond_c
    if-nez v1, :cond_0

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f09085b

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v4, v1, v5}, Lcom/android/phone/CallModeler$Listener;->onModifyCall(ZILjava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v3, "%s"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    if-nez v0, :cond_f

    const-string v0, "Caller"

    :cond_e
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x7f09083b

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToastForALongTime(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    if-eqz v4, :cond_e

    iget-boolean v4, v4, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v4, :cond_e

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    const v0, 0x7f09083d

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_2

    :cond_11
    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->respondModifyCall(Lcom/android/internal/telephony/Connection;Z)V

    const-string v0, "preserve_speaker_state_during_switch"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v2, "onPhoneStateChanged: "

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v1, p0, Lcom/android/phone/CallModeler;->mBlockUpdateCount:I

    if-lez v1, :cond_1

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: Block. Already force updated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallModeler;->mBlockUpdateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/CallModeler;->mBlockUpdateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/CallModeler;->mBlockUpdateCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "onPhoneStateChanged: Block. Already updated about dialing state"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/CallModeler;->getAutoRetrySetting()I

    move-result v2

    if-ne v2, v4, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/android/phone/CallModeler;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallModeler;->doUpdate(ZLjava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v0, v2}, Lcom/android/phone/CallModeler$Listener;->onUpdate(Ljava/util/List;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    goto :goto_0
.end method

.method private onPostDialChars(Landroid/os/AsyncResult;C)V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/Connection;

    if-eqz v6, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v0, Lcom/android/phone/CallModeler$1;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    const-string v3, ""

    iget-boolean v5, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    move v2, v9

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;CZ)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v6, v9}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "Call no longer exists. Skipping onPostDialPause()."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v9, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/CallModeler;->mPostDialStrAfterPause:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;CZ)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v6, v9}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v7

    if-nez v7, :cond_4

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "Call no longer exists. Skipping onPostDialWait()."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v9, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;CZ)V

    goto :goto_3

    :pswitch_2
    iput-boolean v9, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v6, v9}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v7

    if-nez v7, :cond_6

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "Call no longer exists. Skipping onPostDialPauseComplete()."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v9, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;CZ)V

    goto :goto_4

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v6, v9}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v7

    if-nez v7, :cond_8

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "Call no longer exists. Skipping onPostDialPauseComplete()."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mPostDialStrAfterPause:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/phone/CallModeler;->mPauseInProgress:Z

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;CZ)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onSrvccHandover(Landroid/os/AsyncResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSrvccHandover isVideo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const v0, 0x7f090a60

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0
.end method

.method private setNewCVOStatus(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # I
    .param p3    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCVOStatus()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setCVOStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNewDomain(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # I
    .param p3    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setDomain(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNewHDIcon(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # I
    .param p3    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getHDIcon()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setHDIcon(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNewState(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v0, p2, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v0, p3}, Lcom/android/phone/CallGatewayManager;->getGatewayInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v0

    invoke-static {p2}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->getFormattedGatewayNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/services/telephony/common/Call;->setGatewayNumber(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setGatewayPackage(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setRawNumber(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/CallModeler;->getAssistedDialingNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setAssisted(I)V

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setEmergencyCallbackMode(I)V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setEmergencyCallbackMode(I)V

    :cond_1
    :goto_4
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setEriInfo(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setState(I)V

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    invoke-static {p2}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v0, p3}, Lcom/android/phone/CallGatewayManager;->clearGatewayData(Lcom/android/internal/telephony/Connection;)V

    goto :goto_4
.end method

.method private setNewType(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # I
    .param p3    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setType(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNewVideoResolution(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # I
    .param p3    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setVideoResolution(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateCVOFromTelephony(Lcom/android/internal/telephony/Connection;)I
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "cvoenable"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translateCVOFromTelephony, CVO value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private translateDisconnectCauseFromTelephony(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 1
    .param p1    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    iget-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    goto :goto_0
.end method

.method private translateDomainFromTelephony(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private translateHDIconFromTelephony(Lcom/android/internal/telephony/Connection;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "hdicon"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translateHDIconFromTelephony, hdIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v2, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private translateStateFromTelephony(Lcom/android/internal/telephony/Connection;Z)I
    .locals 8

    const/4 v1, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v2, :cond_1

    iget-object v5, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-ne v5, p1, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_5

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/phone/CallModeler;->setCdmaOutgoing3WayCall(Lcom/android/internal/telephony/Connection;)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "translateStateFromTelephony : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isGeneric : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v5, Lcom/android/phone/CallModeler$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    move v1, v4

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateStateFromTelephony newState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    :cond_4
    return v1

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->getEarliestLiveConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-ne v0, p1, :cond_f

    move v0, v1

    :goto_2
    const-string v3, "usa_cdma_concept"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_7
    move v1, v0

    goto/16 :goto_1

    :pswitch_1
    const/4 v1, 0x3

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v1, 0x6

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x5

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0x14

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GATE"

    const-string v2, "<GATE-M>CALL_MO_ALERT_IND</GATE-M>"

    invoke-static {v0, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1

    :pswitch_4
    move v1, v3

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "usa_cdma_concept"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_b

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_c

    move v1, v3

    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto/16 :goto_1

    :cond_c
    move v1, v2

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_e

    move v1, v3

    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_3

    move v1, v2

    goto/16 :goto_1

    :pswitch_6
    const/16 v1, 0x8

    goto/16 :goto_1

    :pswitch_7
    const/16 v1, 0x9

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GATE"

    const-string v2, "<GATE-M>DISCONNECT_CALL</GATE-M>"

    invoke-static {v0, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private translateTypeFromTelephony(Lcom/android/internal/telephony/Connection;)I
    .locals 5

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v3, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const-string v4, "callmodifystatus"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "cms_moprogress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x4

    :cond_2
    :goto_1
    :pswitch_0
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "cms_mtprogress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    packed-switch v3, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_4
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private translateVideoResolutionFromTelephony(Lcom/android/internal/telephony/Connection;)I
    .locals 6

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v2, "volte_jpn_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v4, "resolution"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "volte_jpn_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_1
    if-eqz v4, :cond_6

    const-string v5, "qcif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "qvga"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "hd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "hd_land"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v0, "cif"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-string v0, "hd720"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const-string v1, "common_volte_hk"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "connVideoResolution is null and in IMSVideo dialing call, set VideoResolution.VGA"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0

    :cond_8
    move v3, v0

    goto :goto_1
.end method

.method private updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3}, Lcom/android/phone/CallModeler;->translateStateFromTelephony(Lcom/android/internal/telephony/Connection;Z)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v0, :cond_3d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/phone/CallModeler;->setNewState(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    move v0, v1

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/phone/CallModeler;->translateTypeFromTelephony(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v5

    if-eq v5, v3, :cond_1

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "newType"

    invoke-static {v0, v5, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setVideoCall(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "setVideoCall"

    invoke-static {v0, v5, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    invoke-direct {p0, p1, v3, p2}, Lcom/android/phone/CallModeler;->setNewType(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    move v0, v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/phone/CallModeler;->translateDomainFromTelephony(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v5

    if-eq v5, v3, :cond_2

    invoke-direct {p0, p1, v3, p2}, Lcom/android/phone/CallModeler;->setNewDomain(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    move v0, v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/phone/CallModeler;->translateHDIconFromTelephony(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getHDIcon()I

    move-result v5

    if-eq v5, v3, :cond_4

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.android.phone.ACTION_HD_VOICE_CALL"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "HD_STATUS"

    if-ne v3, v1, :cond_29

    move v0, v1

    :goto_1
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "send HDVoice BR VZW"

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1, v3, p2}, Lcom/android/phone/CallModeler;->setNewHDIcon(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    move v0, v1

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/phone/CallModeler;->translateCVOFromTelephony(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCVOStatus()I

    move-result v5

    if-eq v5, v3, :cond_5

    invoke-direct {p0, p1, v3, p2}, Lcom/android/phone/CallModeler;->setNewCVOStatus(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    move v0, v1

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/phone/CallModeler;->translateVideoResolutionFromTelephony(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v5

    if-eq v5, v3, :cond_6

    invoke-direct {p0, p1, v3, p2}, Lcom/android/phone/CallModeler;->setNewVideoResolution(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    move v0, v1

    :cond_6
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v3, v5, :cond_7

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setPhoneType(I)V

    move v0, v1

    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallModeler;->translateDisconnectCauseFromTelephony(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v5

    if-eq v5, v3, :cond_8

    invoke-virtual {p1, v3}, Lcom/android/services/telephony/common/Call;->setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V

    move v0, v1

    :cond_8
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/android/services/telephony/common/Call;->setCreateTime(J)V

    move v0, v1

    :cond_9
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/android/services/telephony/common/Call;->setConnectTime(J)V

    move v0, v1

    :cond_a
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/android/services/telephony/common/Call;->setDurationMillis(J)V

    move v0, v1

    :cond_b
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_c

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/android/services/telephony/common/Call;->setConnectTimeReal(J)V

    move v0, v1

    :cond_c
    const-string v3, "ims_handle_sip_error_code"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMS_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v5, :cond_d

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setSipErrorCode(I)V

    move v0, v1

    :cond_d
    const-string v3, "ctc_call_time_duration"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getLineCtrlEvent()B

    move-result v3

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getLineControlEvent(Lcom/android/internal/telephony/Connection;)B

    move-result v5

    if-eq v3, v5, :cond_e

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getLineControlEvent(Lcom/android/internal/telephony/Connection;)B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setLineCtrlEvent(B)V

    move v0, v1

    :cond_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_2a

    move v3, v1

    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p1, v3}, Lcom/android/services/telephony/common/Call;->setReceivedCall(B)V

    :cond_f
    const-string v3, "ims_conference_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIMSConferenceCall()B

    move-result v5

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v3, v1

    :goto_3
    if-eq v5, v3, :cond_10

    invoke-virtual {p1, v3}, Lcom/android/services/telephony/common/Call;->setIMSConferenceCall(B)V

    move v0, v1

    :cond_10
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_11
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSrvccConference()B

    move-result v5

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isSrvccConference(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move v3, v1

    :goto_4
    sget-object v6, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oldSrvccConference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newSrvccConference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v3, :cond_3c

    invoke-virtual {p1, v3}, Lcom/android/services/telephony/common/Call;->setSrvccConference(B)V

    move v3, v1

    :goto_5
    if-nez p3, :cond_35

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v5, p2}, Lcom/android/phone/CallGatewayManager;->getGatewayInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v0, v5, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    :cond_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    :cond_13
    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setNumber(Ljava/lang/String;)V

    const-string v2, "phone_number_locator"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v2

    const-string v3, "ctc_country_code_locator"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->checkRoamingCondition(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setPhoneNumberLocator(Ljava/lang/String;)V

    :cond_14
    :goto_6
    move v2, v1

    :goto_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    const-string v5, "unknown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    :cond_15
    :goto_8
    const-string v5, "volte_jpn_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    :cond_16
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumberPresentation()I

    move-result v5

    if-eq v5, v3, :cond_17

    invoke-virtual {p1, v3}, Lcom/android/services/telephony/common/Call;->setNumberPresentation(I)V

    move v2, v1

    :cond_17
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_18
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object v2, v4

    :goto_9
    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setCnapName(Ljava/lang/String;)V

    move v2, v1

    :cond_19
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapNamePresentation()I

    move-result v4

    if-eq v4, v3, :cond_1a

    invoke-virtual {p1, v3}, Lcom/android/services/telephony/common/Call;->setCnapNamePresentation(I)V

    move v2, v1

    :cond_1a
    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCdnipNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setCdnipNumber(Ljava/lang/String;)V

    move v2, v1

    :cond_1c
    const-string v3, "ims_call_message"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getCallMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    const-string v3, "support_photo_ring"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getCallMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<PhotoRing>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getCallMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setCallMessage(Ljava/lang/String;)V

    move v2, v1

    :cond_1e
    :goto_a
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setPostDialString(Ljava/lang/String;)V

    move v2, v1

    :cond_20
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getRadNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_21
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_22
    :goto_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    :cond_23
    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setRadNumber(Ljava/lang/String;)V

    move v2, v1

    :cond_24
    const-string v0, "get_orig_dial_string_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_26

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_25
    const-string v0, "com.google.android.apps.googlevoice"

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setOrigDialString(Ljava/lang/String;)V

    move v2, v1

    :cond_26
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_28

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_28

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_28

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_27
    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setAwimUpdateInfo(I)V

    :cond_28
    :goto_c
    invoke-direct {p0, p2, p1, p3}, Lcom/android/phone/CallModeler;->getCapabilitiesFor(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;Z)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCapabilities()I

    move-result v3

    if-eq v3, v0, :cond_39

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setCapabilities(I)V

    :goto_d
    return v1

    :cond_29
    move v0, v2

    goto/16 :goto_1

    :cond_2a
    move v3, v2

    goto/16 :goto_2

    :cond_2b
    move v3, v2

    goto/16 :goto_3

    :cond_2c
    move v3, v2

    goto/16 :goto_4

    :cond_2d
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setPhoneNumberLocator(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2e
    const-string v5, "anonymous"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    goto/16 :goto_8

    :cond_2f
    const-string v2, "anonymous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "anonymous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object v2, v4

    goto/16 :goto_9

    :cond_30
    const-string v2, "anonymous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "Anonymous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object v2, v4

    goto/16 :goto_9

    :cond_31
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getCallMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setCallMessage(Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_a

    :cond_32
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getUserInputDialingNumber()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_33
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    :cond_34
    move-object v0, v3

    goto/16 :goto_b

    :cond_35
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->removeAllChildren()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    iget-object v6, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, v2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v6

    if-eqz v6, :cond_36

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->addChildId(I)V

    goto :goto_e

    :cond_37
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableSortedSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    move v2, v1

    :cond_38
    iput-boolean v2, p0, Lcom/android/phone/CallModeler;->mConfChanged:Z

    iget-boolean v0, p0, Lcom/android/phone/CallModeler;->mConfChanged:Z

    or-int v2, v3, v0

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConfChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/CallModeler;->mConfChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_39
    move v1, v2

    goto/16 :goto_d

    :cond_3a
    move-object v2, v3

    goto/16 :goto_9

    :cond_3b
    move v2, v3

    goto/16 :goto_7

    :cond_3c
    move v3, v0

    goto/16 :goto_5

    :cond_3d
    move v0, v2

    goto/16 :goto_0
.end method

.method private updateForConferenceCalls(Lcom/android/internal/telephony/Connection;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->getEarliestLiveConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-direct {p0, v3, p1, v1}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v0

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateForConferenceCalls(), mConfChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/CallModeler;->mConfChanged:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getOnMerge()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/CallModeler;->mConfChanged:Z

    if-eqz v1, :cond_0

    const v1, 0x7f09056e

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToastForALongTime(I)V

    :cond_0
    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOnMerge(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating a conference call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up an old conference call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->setState(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/phone/CallModeler$Listener;)V
    .locals 1
    .param p1    # Lcom/android/phone/CallModeler$Listener;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createModifyCallResultMessage(II)Landroid/os/Message;
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallStateMonitor;->createModifyCallResultMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallStateMonitors:[Lcom/android/phone/CallStateMonitor;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/phone/CallStateMonitor;->createModifyCallResultMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public forcePhoneStateUpdate()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "forcePhoneStateUpdate :"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    iput v2, p0, Lcom/android/phone/CallModeler;->mBlockUpdateCount:I

    return-void
.end method

.method public getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_0

    new-instance v4, Lcom/android/phone/CallModeler$CallResult;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-direct {v4, v2, v3, v5}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallModeler$1;)V

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_2

    new-instance v4, Lcom/android/phone/CallModeler$CallResult;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-direct {v4, v2, v3, v5}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallModeler$1;)V

    move-object v2, v4

    goto :goto_0

    :cond_3
    move-object v2, v5

    goto :goto_0
.end method

.method public getFirstCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CallModeler;->getFullList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/common/Call;

    :cond_0
    return-object v1
.end method

.method public getFullList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-char v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallModeler;->onPostDialChars(Landroid/os/AsyncResult;C)V

    goto :goto_0

    :sswitch_4
    const-string v0, "feature_skt_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVideoCalling()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "PHONE_INCOMING_MODIFY_CALL_REQUEST do not act(For Tphone mode)"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onIncomingModifyCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->handleModifyCallResult(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "EVENT_SRVCC_HANDOVER"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onSrvccHandover(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xd -> :sswitch_3
        0x6f -> :sswitch_6
        0x70 -> :sswitch_4
        0x71 -> :sswitch_5
    .end sparse-switch
.end method

.method public hasLiveCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->hasLiveCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->hasLiveCallInternal(Ljava/util/HashMap;)Z

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

.method public hasOutstandingActiveOrDialingCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/phone/CallModeler;->hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/phone/CallModeler;->hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z

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

.method protected isOtaspNumber()Z
    .locals 3

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOtaspNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallModeler;->mIsOtaspNumber:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/CallModeler;->mIsOtaspNumber:Z

    return v0
.end method

.method public onCdmaCallWaiting(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;I)V
    .locals 3

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallModeler;->onNewRingingConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "CDMA Call waiting notification without a matching connection."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method public onCdmaCallWaitingReject()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onDisconnect(Lcom/android/internal/telephony/Connection;)V

    iput-object v2, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "CDMA Call waiting rejection without an incoming call."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    goto :goto_0
.end method

.method public onHoldCallStateChange(Z)V
    .locals 3

    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoldCallStateChange isHoldCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v0, p1}, Lcom/android/phone/CallModeler$Listener;->onHoldCallStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLineControlStateChanged()V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v2, "onLineControlStateChanged"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallModeler;->doUpdate(ZLjava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v0, v2}, Lcom/android/phone/CallModeler$Listener;->onUpdate(Ljava/util/List;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    return-void
.end method

.method onNewRingingConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v2, "onNewRingingConnection"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, p1, v0}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v0, v2}, Lcom/android/phone/CallModeler$Listener;->onIncoming(Lcom/android/services/telephony/common/Call;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    return-object v2
.end method

.method public onPhoneStateChanged(Landroid/os/AsyncResult;Z)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v2, "onPhoneStateChanged: force"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallModeler;->doUpdate(ZLjava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v0, v2}, Lcom/android/phone/CallModeler$Listener;->onForceUpdate(Ljava/util/List;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v0, v2}, Lcom/android/phone/CallModeler$Listener;->onUpdate(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    return-void
.end method

.method public setCdmaOutgoing3WayCall(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
