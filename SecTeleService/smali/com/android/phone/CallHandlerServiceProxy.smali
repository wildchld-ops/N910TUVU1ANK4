.class public Lcom/android/phone/CallHandlerServiceProxy;
.super Landroid/os/Handler;
.source "CallHandlerServiceProxy.java"

# interfaces
.implements Lcom/android/phone/AudioRouter$AudioModeListener;
.implements Lcom/android/phone/CallModeler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallHandlerServiceProxy$1;,
        Lcom/android/phone/CallHandlerServiceProxy$QueueParams;,
        Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioRouter:Lcom/android/phone/AudioRouter;

.field private mBindRetryCount:I

.field private mCallCommandService:Lcom/android/phone/CallCommandService;

.field private mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

.field private mCallModeler:Lcom/android/phone/CallModeler;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFullUpdateOnConnect:Z

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallHandlerServiceProxy$QueueParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceAndQueueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/CallHandlerServiceProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/CallModeler;Lcom/android/phone/CallCommandService;Lcom/android/phone/AudioRouter;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/phone/CallModeler;
    .param p3    # Lcom/android/phone/CallCommandService;
    .param p4    # Lcom/android/phone/AudioRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "init CallHandlerServiceProxy"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallCommandService:Lcom/android/phone/CallCommandService;

    iput-object p2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    iput-object p4, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v0, p0}, Lcom/android/phone/AudioRouter;->addAudioModeListener(Lcom/android/phone/AudioRouter$AudioModeListener;)V

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/services/telephony/common/ICallHandlerService;)V
    .locals 0
    .param p0    # Lcom/android/phone/CallHandlerServiceProxy;
    .param p1    # Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .param p0    # Lcom/android/phone/CallHandlerServiceProxy;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallHandlerServiceProxy;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/phone/CallHandlerServiceProxy;

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .param p0    # Lcom/android/phone/CallHandlerServiceProxy;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .param p0    # Lcom/android/phone/CallHandlerServiceProxy;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->reconnectOnRemainingCalls()V

    return-void
.end method

.method private enqueueConnectRetry(I)V
    .locals 5
    .param p1    # I

    iget v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const/16 v0, 0x7530

    :goto_1
    sget-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InCallUI Connection failed. Enqueuing delayed retry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retries("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d0

    goto :goto_1
.end method

.method private enqueueDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x3

    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, p1}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private enqueueIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, p1}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private enqueuePhotoRingStateChange(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    mul-int/lit8 v1, p1, 0xa

    add-int v0, v1, p2

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private enqueueUpdate(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, v0}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v6}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getInCallServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallHandlerServiceProxy$QueueParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method private handleConnectRetry()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Retry: already connected."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->incrementRetryCount()V

    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Canceling connection retry since there are no calls."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private incrementRetryCount()V
    .locals 2

    const v0, 0x7fffffff

    iget v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    :cond_0
    iget v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    return-void
.end method

.method private makeInitialServiceCalls()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallCommandService:Lcom/android/phone/CallCommandService;

    invoke-interface {v1, v2}, Lcom/android/services/telephony/common/ICallHandlerService;->startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1}, Lcom/android/phone/AudioRouter;->getSupportedAudioModes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallHandlerServiceProxy;->onSupportedAudioModeChange(I)V

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1}, Lcom/android/phone/AudioRouter;->getAudioMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v2}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/CallHandlerServiceProxy;->onAudioModeChange(IZ)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallHandlerServiceProxy;->onVoicePrivacyModeChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception calling CallHandlerService::setCallCommandService"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/ICallHandlerService;

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->makeInitialServiceCalls()V

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->processQueue()V

    iget-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->getFullList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallHandlerServiceProxy;->onUpdate(Ljava/util/List;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private partialUnbind()V
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "partialUnbind to control statusbar"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;

    :try_start_0
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->partialUnbind()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onDisconnect "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processForceUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processForceUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onForceUpdate(Ljava/util/List;)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->partialUnbind()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onForceUpdate"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 6
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x1

    sget-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncoming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GATE"

    const-string v3, "<GATE-M>INCOMING_CALL</GATE-M>"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-static {}, Lcom/android/phone/RejectWithTextMessageManager;->loadCannedResponses()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Lcom/android/services/telephony/common/ICallHandlerService;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    :cond_1
    :goto_0
    monitor-exit v3

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-static {}, Lcom/android/phone/RejectWithTextMessageManager;->loadIconModeData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Lcom/android/services/telephony/common/ICallHandlerService;->onIncomingIconMode(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Remote exception handling onUpdate"

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private processPhotoRingStateChange(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->onPhotoRingStateChange(II)V

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Exception handling onPhotoRingStateChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processQueue()V
    .locals 7

    iget-object v4, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$800(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$800(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not recognized."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    :try_start_1
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3}, Lcom/android/phone/CallHandlerServiceProxy;->processIncoming(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/phone/CallHandlerServiceProxy;->processUpdate(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/phone/CallHandlerServiceProxy;->processForceUpdate(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3}, Lcom/android/phone/CallHandlerServiceProxy;->processDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :pswitch_4
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v3, v2, 0xa

    rem-int/lit8 v5, v2, 0xa

    invoke-direct {p0, v3, v5}, Lcom/android/phone/CallHandlerServiceProxy;->processPhotoRingStateChange(II)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private processUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onUpdate(Ljava/util/List;)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->partialUnbind()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reconnectOnRemainingCalls()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    invoke-virtual {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    :cond_0
    return-void
.end method

.method private resetConnectRetryCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    return-void
.end method

.method private startOtaInCallScreen()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "device_provisioned"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", provisioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", runningSetupWizard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ota_not_spport"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/OtaInCallScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private unbind()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Unbinding service."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wakeUpScreen()V
    .locals 3

    const-string v1, "feature_skt_tphone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "relaxe TPhone mode - Not wakeUpScreen()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "wakeUpScreen()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    goto :goto_0
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "answerRingingCall()"

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallHandlerService;->answerRingingCall()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Exception handling answerRingingCall"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public bringToForeground(Z)V
    .locals 5
    .param p1    # Z

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bringToForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->bringToForeground(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Exception handling bringToForeground"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public bringToForegroundIgnoreState(Z)V
    .locals 4
    .param p1    # Z

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "bringToForegroundIgnoreState"

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->bringToForegroundIgnoreState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Exception handling bringToForegroundIgnoreState"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->handleConnectRetry()V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Binding time out. InCallUI did not respond in time."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->handleConnectRetry()V

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "unbindservice exception"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAudioModeChange(IZ)V
    .locals 4
    .param p1    # I
    .param p2    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onAudioModeChange()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating with new audio mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with mute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->onAudioModeChange(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onAudioModeChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->wakeUpScreen()V

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue disconnect"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueDisconnect(Lcom/android/services/telephony/common/Call;)V

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->isOtaspNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onEmergencyModeChange(I)V
    .locals 4
    .param p1    # I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onEmergencyModeChange()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onEmergencyModeChange(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onEmergencyModeChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onForceUpdate(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2}, Lcom/android/phone/CallModeler;->isOtaspNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->startOtaInCallScreen()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKidsMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isReceivedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "[KidsPhone] Kids Mode is On unbind CallHandler Service!!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "CallHandlerService not connected.  Enqueue update."

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueUpdate(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processForceUpdate(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onHdVoiceStatusChange(Z)V
    .locals 4
    .param p1    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onHdVoiceStatusChange()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onHdVoiceStatusChange(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onHdVoiceStatusChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onHoldCallStateChange(Z)V
    .locals 4
    .param p1    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onHoldCallStateChange()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onHoldCallStateChange(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onHoldCallStateChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKidsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "[KidsPhone]Kids Mode is On ubind CallHandler Service!!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue incoming."

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueIncoming(Lcom/android/services/telephony/common/Call;)V

    invoke-virtual {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processIncoming(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method

.method public onModifyCall(ZILjava/lang/String;)V
    .locals 4
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onModifyCall()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/services/telephony/common/ICallHandlerService;->onModifyCall(ZILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onModifyCall"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onPhotoRingStateChange(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;
    .param p2    # I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/phone/CallHandlerServiceProxy;->enqueuePhotoRingStateChange(II)V

    invoke-virtual {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/phone/CallHandlerServiceProxy;->processPhotoRingStateChange(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;CZ)V
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection$PostDialState;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # C
    .param p5    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onPostDialWait()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p2, p3}, Lcom/android/services/telephony/common/ICallHandlerService;->onPostDialWait(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_3

    if-eqz p5, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p2, p3}, Lcom/android/services/telephony/common/ICallHandlerService;->onPostDialPause(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p2, p3}, Lcom/android/services/telephony/common/ICallHandlerService;->onPostDialPauseComplete(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 4
    .param p1    # I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. SkippingonSupportedAudioModeChange()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSupportAudioModeChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onSupportedAudioModeChange(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onAudioModeChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2}, Lcom/android/phone/CallModeler;->isOtaspNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->startOtaInCallScreen()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKidsMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isReceivedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "[KidsPhone] Kids Mode is On unbind CallHandler Service!!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "CallHandlerService not connected.  Enqueue update."

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueUpdate(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processUpdate(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onVoicePrivacyModeChange(Z)V
    .locals 4
    .param p1    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onVoicePrivacyModeChange()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating with new VP mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onVoicePrivacyModeChange(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onVoicePrivacyModeChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onWBModeChange(Z)V
    .locals 4
    .param p1    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onWBModeChange()."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onWBModeChange(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onWBModeChange"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public processChangeInContent(I)V
    .locals 3
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->getFullList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallHandlerServiceProxy;->onUpdate(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "processChangeInContent: "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onChangeInContent(I)V

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onDisconnect "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setupServiceConnection()V
    .locals 11

    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/CallHandlerServiceProxy;->getInCallServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binding to service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-nez v7, :cond_6

    new-instance v7, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v9}, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;-><init>(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    iput-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_3

    const-string v7, "android.permission.BIND_CALL_SERVICE"

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :cond_1
    if-nez v4, :cond_4

    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v9, "Default call handler service not found."

    invoke-static {v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_2
    :goto_2
    if-eqz v0, :cond_5

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueConnectRetry(I)V

    :goto_3
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "binding to service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v10, 0x1

    invoke-virtual {v7, v5, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not bind to default call handler service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueConnectRetry(I)V

    goto :goto_3

    :cond_6
    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v9, "Service connection to in call service already started."

    invoke-static {v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
