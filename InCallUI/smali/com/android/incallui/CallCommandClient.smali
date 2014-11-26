.class public Lcom/android/incallui/CallCommandClient;
.super Ljava/lang/Object;
.source "CallCommandClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/incallui/CallCommandClient;


# instance fields
.field private mCommandService:Lcom/android/services/telephony/common/ICallCommandService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallCommandClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallCommandClient;
    .locals 2

    const-class v1, Lcom/android/incallui/CallCommandClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallCommandClient;->sInstance:Lcom/android/incallui/CallCommandClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCommandClient;

    invoke-direct {v0}, Lcom/android/incallui/CallCommandClient;-><init>()V

    sput-object v0, Lcom/android/incallui/CallCommandClient;->sInstance:Lcom/android/incallui/CallCommandClient;

    :cond_0
    sget-object v0, Lcom/android/incallui/CallCommandClient;->sInstance:Lcom/android/incallui/CallCommandClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addCall()V
    .locals 3

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "add a new call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->addCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error merging calls."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addCallMultiSim(I)V
    .locals 3
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "add a new call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->addCallMultiSim(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error merging calls."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerCall(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot answer call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->answerCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error answering call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerCallAsVoice(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCallAsVoice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot answer call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->answerCallAsVoice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error answering call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerCallWithCallType(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCallWithCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot answer call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->answerCallWithCallType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error answering call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerCallWithSpeaker(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCallWithSpeaker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot answerCallWithSpeaker call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->answerCallWithSpeaker(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error answerCallWithSpeaker call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerMessage(IZ)V
    .locals 4
    .param p1    # I
    .param p2    # Z

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answermessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot answer answerMessage CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->answerMessage(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error answering Message."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkDrivelink()V
    .locals 3

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "checkDrivelink "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot disconnect call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->checkDrivelink()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error checkDrivelink."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkVideoRecorder()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot CheckVideoRecorder(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "CheckVideoRecorder()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->checkVideoRecorder()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public checkVoiceRecorder()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot CheckVoiceRecorder(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "CheckVoiceRecorder()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->checkVoiceRecorder()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public disconnectCall(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect Call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot disconnect call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->disconnectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error disconnecting call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public explicitCallTransfer(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " explicitCallTransfer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot perform explicitCallTransfer; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error perform explicitCallTransfer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFirstCallerForIMSConference()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot getFirstCallerForIMSConference(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "getFirstCallerForIMSConference()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->getFirstCallerForIMSConference()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getHdVoiceStatus()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "getHdVoiceStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot getHdVoiceStatus; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->getHdVoiceStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Error getHdVoiceStatus"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNameForIMSConference()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot getNameForIMSConference(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "getNameForIMSConference()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->getNameForIMSConference()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot getNameFromFDN(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "getNameFromFDN()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2, p1}, Lcom/android/services/telephony/common/ICallCommandService;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot getNameFromSDN(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "getNameFromSDN()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2, p1}, Lcom/android/services/telephony/common/ICallCommandService;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNumberForIMSConference()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot getNumberForIMSConference(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "getNumberForIMSConference()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->getNumberForIMSConference()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPenWindowRectInfo()Landroid/graphics/Rect;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot getPenWindowRectInfo(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->getPenWindowRectInfo()Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public hangUp(IZ)V
    .locals 4
    .param p1    # I
    .param p2    # Z

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot hangUp call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->hangUp(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error hangUp call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hold(IZ)V
    .locals 4
    .param p1    # I
    .param p2    # Z

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hold call("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot hold call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->hold(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error holding call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public holdMultiSim(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "hold call in Multi-SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot hold call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->holdMultiSim(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error holding call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public is2GNetwork()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v4, "Cannot is2GNetwork call; CallCommandService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v3}, Lcom/android/services/telephony/common/ICallCommandService;->is2GNetwork()Z

    move-result v1

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is2GNetwork()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public isCameraAppRunning()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot isCameraAppRunning(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "isCameraAppRunning()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->isCameraAppRunning()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public isDisplayBitrate()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v4, "Cannot isSimCardReady(); CallCommandService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v3}, Lcom/android/services/telephony/common/ICallCommandService;->isDisplayBitrate()Z

    move-result v1

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDisplayBitrate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public isDomesticRoamingSettingInService()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isDomesticRoamingSettingInService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isDomesticRoamingSettingInService; CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->isDomesticRoamingSettingInService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Error isDomesticRoamingSettingInService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEPDGCall(I)Z
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isEPDGCall"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isEPDGCall; CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2, p1}, Lcom/android/services/telephony/common/ICallCommandService;->isEPDGCall(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Error isEPDGCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isFindService()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot isFindService(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "isFindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->isFindService()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public isIMSConferenceStateChanged()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isIMSConferenceStateChanged(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isIMSConferenceStateChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->isIMSConferenceStateChanged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isInternationalRoamingSettingInService()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isInternationalRoamingSettingInService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isInternationalRoamingSettingInService; CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->isInternationalRoamingSettingInService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Error isInternationalRoamingSettingInService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isInternationalRoamingSettingInServiceGsm()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isInternationalRoamingSettingInServiceGsm"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isInternationalRoamingSettingInServiceGsm; CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->isInternationalRoamingSettingInServiceGsm()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Error isInternationalRoamingSettingInServiceGsm"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMcidBlockNumber()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v4, "Cannot isMcidBlockNumber(); CallCommandService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v3}, Lcom/android/services/telephony/common/ICallCommandService;->isMcidBlockNumber()Z

    move-result v1

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMcidBlockNumber()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public isMcidWithAlertInfo()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v4, "Cannot isMcidWithAlertInfo(); CallCommandService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v3}, Lcom/android/services/telephony/common/ICallCommandService;->isMcidWithAlertInfo()Z

    move-result v1

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMcidWithAlertInfo()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public isPenWindow()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isPenWindow(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isPenWindow()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->isPenWindow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isRoamingSettingInService()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isRoamingSettingInService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isRoamingSettingInService; CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->isRoamingSettingInService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Error isRoamingSettingInService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVolteIconPossible()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isVolteIconPossible(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isVolteIconPossible()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->isVolteIconPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isWBMode(I)Z
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "isWBMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot isWBMode; CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2, p1}, Lcom/android/services/telephony/common/ICallCommandService;->isWBMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Error isWBMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public merge()V
    .locals 3

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "merge calls"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot merge call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error merging calls."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mergeMultiSim(I)V
    .locals 3
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "merge calls"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot merge call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->mergeMultiSim(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error merging calls."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public moveCameraTaskToBack()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot moveCameraTaskToBack(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "moveCameraTaskToBack()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->moveCameraTaskToBack()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public moveCameraTaskToFront()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot moveCameraTaskToFront(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "moveCameraTaskToFront()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->moveCameraTaskToFront()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 4
    .param p1    # Z

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot mute call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error muting phone."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNewIncomingRcsSession(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot wake screen up; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->onNewIncomingRcsSession(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error holding call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playDtmfTone(CZ)V
    .locals 4
    .param p1    # C
    .param p2    # Z

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start dtmf tone; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending dtmf tone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->playDtmfTone(CZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error setting speaker."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postDialCancel(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot postDialCancel(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "postDialCancel()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->postDialCancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error on postDialCancel()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postDialWaitContinue(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot postDialWaitContinue(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "postDialWaitContinue()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->postDialWaitContinue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error on postDialWaitContinue()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Z
    .param p3    # Ljava/lang/String;

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", with rejectMessage? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot reject call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/services/telephony/common/ICallCommandService;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error rejecting call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestModifyCall(II)Z
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v4, "Cannot requestModifyCall(); CallCommandService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/incallui/CallButtonPresenter;->setVideoRequestType(I)V

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v3, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->requestModifyCall(II)Z

    move-result v1

    sget-object v3, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v4, "requestModifyCall()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public requestRcsObserver(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot requestRcsObserver(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRcsObserver() rcsObserver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " registerUnregister = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->requestRcsObserver(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error answering call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public respondModifyCall(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot respondModifyCall(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "respondModifyCall()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->respondModifyCall(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lcom/android/services/telephony/common/Call;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Ljava/lang/String;

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "sendMessage: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot send Message; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->sendMessage(Lcom/android/services/telephony/common/Call;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error send Message call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot sendSecBluetoothATCommand(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSecBluetoothATCommand() command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error on sendSecBluetoothATCommand()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public separateCall(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separate Call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot separate call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->separateCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error separating call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Audio Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot set audio mode; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setAudioMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error setting speaker."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallManagerAudioMode()V
    .locals 3

    sget-object v0, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v1, "setCallManagerAudioMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v1, "Cannot call setCallManagerAudioMode CallCommandService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ICallCommandService;->setCallManagerAudioMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error call setCallManagerAudioMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallProtectionValue(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot setCallProtectionValue(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setCallProtectionValue(Z)V

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "setCallProtectionValue()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCurrentVisibleSimId(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot setCurrentVisibleSimId(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentVisibleSimId():simid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setCurrentVisibleSimId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setEndCallNumberForLGTRAD(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot setEndCallNumberForLGTRAD(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "setEndCallNumberForLGTRAD()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->setEndCallNumberForLGTRAD(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPenWindow(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot setPenWindow(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setPenWindow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPenWindowRectInfo()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot setPenWindowRectInfo(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->setPenWindowRectInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setService(Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 0
    .param p1    # Lcom/android/services/telephony/common/ICallCommandService;

    iput-object p1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    return-void
.end method

.method public setShowingIncomingPopup(Z)V
    .locals 3
    .param p1    # Z

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "setShowingIncomingPopup: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot send Message; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setShowingIncomingPopup(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error setShowingIncomingPopup"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSystemBarNavigationEnabled(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot setSystemBarNavigationEnabled(); CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemBarNavigationEnabled() enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setSystemBarNavigationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error on setSystemBarNavigationEnabled()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shouldVibrate()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "Cannot shouldVibrate(); CallCommandService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v3, "shouldVibrate()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ICallCommandService;->shouldVibrate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public silentRinger()V
    .locals 3

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "silentRinger"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot call silentRinger CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->silentRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error call silentRinger."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot stop dtmf tone; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Stop dtmf tone "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->stopDtmfTone()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error setting speaker."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopNotificationFlash()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot stop NotificationFlash; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "stop NotificationFlash"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->stopNotificationFlash()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error stop NotificationFlash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public swap()V
    .locals 3

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "swap active/hold calls"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot swap call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->swap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error merging calls."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public swapMultiSim(I)V
    .locals 3
    .param p1    # I

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "swap active/hold calls"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Cannot swap call; CallCommandService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->swapMultiSim(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallCommandClient;->TAG:Ljava/lang/String;

    const-string v2, "Error merging calls."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
