.class public Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
.super Ljava/lang/Object;
.source "AnswerMemoRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;,
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;,
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mIsPaused:Z

.field private mIsRecording:Z

.field private mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

.field private mRecorderConnection:Landroid/content/ServiceConnection;

.field private mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnswerMemoRecorderManager"

    iput-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnswerMemoRecorderManager"

    iput-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method


# virtual methods
.method public getRecordTime()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->getRecordTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

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

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return v0
.end method

.method public startRecord()V
    .locals 4

    :try_start_0
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecorderSrv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

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

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "startService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "bindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "can not bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "can not start service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->stopRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

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

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    const-string v2, "AnswerMemoRecorderManager"

    const-string v3, "stopService()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AnswerMemoRecorderManager"

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
