.class public Lcom/android/incallui/PhoneVoiceRecorderManager;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/PhoneVoiceRecorderManager$1;,
        Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;,
        Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mIsPaused:Z

.field private mIsRecording:Z

.field private mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

.field private mRecorderConnection:Landroid/content/ServiceConnection;

.field private mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 3
    .param p1    # Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PhoneVoiceRecorderManager"

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 1
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 0
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;
    .param p1    # Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 1
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 0
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;
    .param p1    # Lcom/android/phone/IPhoneVoiceRecorderService;

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/PhoneVoiceRecorderManager;)Z
    .locals 1
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/PhoneVoiceRecorderManager;)Z
    .locals 1
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/incallui/InCallActivity;
    .locals 1
    .param p0    # Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method


# virtual methods
.method public getRecordTime()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->getRecordTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordTime() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    return v0
.end method

.method public pauseRecord()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->pauseRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resumeRecord()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->resumeRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecord()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startService()V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.PhoneVoiceRecorderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/incallui/PhoneVoiceRecorderManager$1;)V

    iput-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "startService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "bindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "can not bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "can not start service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->stopRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopService()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.PhoneVoiceRecorderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iget-object v3, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/IPhoneVoiceRecorderService;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v3, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    const-string v2, "PhoneVoiceRecorderManager"

    const-string v3, "stopService()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PhoneVoiceRecorderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopService() -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
