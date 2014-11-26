.class public Lcom/android/phone/PhoneVoiceRecorderService;
.super Landroid/app/Service;
.source "PhoneVoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mBinder:Lcom/android/phone/IPhoneVoiceRecorderService$Stub;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private recorder:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "PhoneVoiceRecorderService"

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/PhoneVoiceRecorderService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVoiceRecorderService$1;-><init>(Lcom/android/phone/PhoneVoiceRecorderService;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneVoiceRecorderService;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorderService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVoiceRecorderService;I)V
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorderService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorderService;->sendMessageCallback(I)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "PhoneVoiceRecorderService"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "PhoneVoiceRecorderService"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private sendMessageCallback(I)V
    .locals 5
    .param p1    # I

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    invoke-interface {v3, p1}, Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;->messageCallback(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v4

    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageCallback exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getRecordTime()J
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->getRecordTime()J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordTime outofmemory exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const-string v0, "onBind()"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mBinder:Lcom/android/phone/IPhoneVoiceRecorderService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "onCreate()"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->registerForInfoStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneVoiceRecorder;->setServiceAlive(Z)V

    :cond_0
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;-><init>(Lcom/android/phone/PhoneVoiceRecorderService;Landroid/os/RemoteCallbackList;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mBinder:Lcom/android/phone/IPhoneVoiceRecorderService$Stub;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->unregisterForInfoStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->setServiceAlive(Z)V

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1    # Landroid/content/Intent;

    const-string v0, "onUnbind()"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pauseRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->pauseRecord()V

    :cond_0
    return-void
.end method

.method public resumeRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->resumeRecord()V

    :cond_0
    return-void
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneVoiceRecorder;->setCallerNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord()V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    :cond_0
    return-void
.end method
