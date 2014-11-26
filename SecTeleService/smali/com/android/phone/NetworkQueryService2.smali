.class public Lcom/android/phone/NetworkQueryService2;
.super Landroid/app/Service;
.source "NetworkQueryService2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService2$LocalBinder;
    }
.end annotation


# static fields
.field static OEM_FUNCTION_ID_NETWORK:I

.field static OEM_NETWORK_SCAN_CANCEL:I


# instance fields
.field private final mBinder:Lcom/android/phone/INetworkQueryService2$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/INetworkQueryServiceCallback2;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/android/phone/NetworkQueryService2;->OEM_FUNCTION_ID_NETWORK:I

    const/4 v0, 0x3

    sput v0, Lcom/android/phone/NetworkQueryService2;->OEM_NETWORK_SCAN_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/phone/NetworkQueryService2$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService2$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService2;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mLocalBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/android/phone/NetworkQueryService2$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService2$1;-><init>(Lcom/android/phone/NetworkQueryService2;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/phone/NetworkQueryService2$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService2$2;-><init>(Lcom/android/phone/NetworkQueryService2;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mBinder:Lcom/android/phone/INetworkQueryService2$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkQueryService2;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/NetworkQueryService2;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkQueryService2;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/NetworkQueryService2;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService2;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkQueryService2;)I
    .locals 1
    .param p0    # Lcom/android/phone/NetworkQueryService2;

    iget v0, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/NetworkQueryService2;I)I
    .locals 0
    .param p0    # Lcom/android/phone/NetworkQueryService2;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkQueryService2;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/NetworkQueryService2;

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1    # Landroid/os/AsyncResult;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    if-nez p1, :cond_0

    const-string v3, "AsyncResult is null."

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncResult has exception "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting results to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v0, v3, v1}, Lcom/android/phone/INetworkQueryServiceCallback2;->onQueryComplete(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "NetworkQuery2"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "NetworkQuery2"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "binding service implementation"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1    # Landroid/content/Intent;
    .param p2    # I

    return-void
.end method
