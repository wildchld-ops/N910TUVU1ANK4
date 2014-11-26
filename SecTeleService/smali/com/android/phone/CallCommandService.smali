.class Lcom/android/phone/CallCommandService;
.super Lcom/android/services/telephony/common/ICallCommandService$Stub;
.source "CallCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCommandService$ToastRunnable;,
        Lcom/android/phone/CallCommandService$TeleServiceUIHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioRouter:Lcom/android/phone/AudioRouter;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallModeler:Lcom/android/phone/CallModeler;

.field private final mContext:Landroid/content/Context;

.field private final mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerInitLock:Ljava/lang/Object;

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-class v2, Lcom/android/phone/CallCommandService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    sget v2, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallCommandService;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;Lcom/android/phone/DTMFTonePlayer;Lcom/android/phone/AudioRouter;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallManager;
    .param p3    # Lcom/android/phone/CallModeler;
    .param p4    # Lcom/android/phone/DTMFTonePlayer;
    .param p5    # Lcom/android/phone/AudioRouter;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mHandlerInitLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    iput-object p4, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    iput-object p5, p0, Lcom/android/phone/CallCommandService;->mAudioRouter:Lcom/android/phone/AudioRouter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mHandlerInitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/CallCommandService$TeleServiceUIHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCommandService$TeleServiceUIHandler;-><init>(Lcom/android/phone/CallCommandService;)V

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

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

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;[Lcom/android/internal/telephony/Phone;Lcom/android/phone/CallModeler;Lcom/android/phone/DTMFTonePlayer;Lcom/android/phone/AudioRouter;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallManager;
    .param p3    # [Lcom/android/internal/telephony/Phone;
    .param p4    # Lcom/android/phone/CallModeler;
    .param p5    # Lcom/android/phone/DTMFTonePlayer;
    .param p6    # Lcom/android/phone/AudioRouter;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mHandlerInitLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    iput-object p3, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    iput-object p4, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    iput-object p5, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    iput-object p6, p0, Lcom/android/phone/CallCommandService;->mAudioRouter:Lcom/android/phone/AudioRouter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mHandlerInitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/CallCommandService$TeleServiceUIHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCommandService$TeleServiceUIHandler;-><init>(Lcom/android/phone/CallCommandService;)V

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

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

.method static synthetic access$000(Lcom/android/phone/CallCommandService;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/CallCommandService;

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)Z

    :cond_0
    return-void
.end method

.method public addCallMultiSim(I)V
    .locals 3
    .param p1    # I

    sget-boolean v0, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multi-SIM addCall, simSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/Phone;)Z

    :cond_1
    return-void
.end method

.method public answerCall(I)V
    .locals 5
    .param p1    # I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answerCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during answerCall()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerCallAsVoice(I)V
    .locals 5
    .param p1    # I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answerCallAsVoice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during answerCallAsVoice()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerCallWithCallType(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answerCallAsVoice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during answerCallAsVoice()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerCallWithSpeaker(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answerCallWithSpeaker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mSpeakerOnByCommand:Z

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sput-boolean v5, Lcom/android/phone/PhoneUtils;->mSpeakerOnByCommand:Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during answerCall()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-boolean v5, Lcom/android/phone/PhoneUtils;->mSpeakerOnByCommand:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    sput-boolean v5, Lcom/android/phone/PhoneUtils;->mSpeakerOnByCommand:Z

    throw v2
.end method

.method public answerMessage(IZ)V
    .locals 5
    .param p1    # I
    .param p2    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answerMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->answerMessage(Lcom/android/internal/telephony/Call;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during answerMessage()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkDrivelink()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneUtils;->checkDriveLink(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public checkVideoRecorder()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVideoRecorder()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public checkVoiceRecorder()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectCall(I)V
    .locals 6
    .param p1    # I

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    const/4 v3, 0x7

    if-eq v3, v2, :cond_0

    const/4 v3, 0x5

    if-eq v3, v2, :cond_0

    const/4 v3, 0x6

    if-eq v3, v2, :cond_0

    const/16 v3, 0x14

    if-ne v3, v2, :cond_2

    :cond_0
    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "hangup "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curren call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v3, 0xa

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error during disconnectCall()."

    invoke-static {v3, v4, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public displayTPhone(I)V
    .locals 1
    .param p1    # I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->displayTPhone(I)V

    return-void
.end method

.method public explicitCallTransfer(I)V
    .locals 5
    .param p1    # I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "explicitCallTransfer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during explicitCallTransfer()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFirstCallerForIMSConference()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getFirstCallerForIMSConference()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getHdVoiceStatus()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getHdVoiceStatus()Z

    move-result v0

    return v0
.end method

.method public getNameForIMSConference()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getNameForIMSConference()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    move-object v1, p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    move-object v1, p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNumberForIMSConference()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getNumberForIMSConference()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPenWindowRectInfo()Landroid/graphics/Rect;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getRectInfo()Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public hangUp(IZ)V
    .locals 5
    .param p1    # I
    .param p2    # Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangUp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during hangUp()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hold(IZ)V
    .locals 6
    .param p1    # I
    .param p2    # Z

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    if-eqz p2, :cond_2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    :cond_0
    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "GATE"

    const-string v4, "<GATE-M>HOLD_CALL</GATE-M>"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p2, :cond_0

    const/4 v3, 0x7

    if-ne v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error trying to place call on hold."

    invoke-static {v3, v4, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public holdMultiSim(IZ)V
    .locals 7
    .param p1    # I
    .param p2    # Z

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v4, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    sget-boolean v4, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multi-SIM hold, simSlot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_4

    const/4 v4, 0x2

    if-ne v4, v3, :cond_4

    const-string v4, "feature_chn_duos_gsm_gsm"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDualInCallState()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->holdCall()V

    :cond_1
    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "GATE"

    const-string v5, "<GATE-M>HOLD_CALL</GATE-M>"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v5, "Error trying to place call on hold."

    invoke-static {v4, v5, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    if-nez p2, :cond_1

    const/4 v4, 0x7

    if-ne v4, v3, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public is2GNetwork()Z
    .locals 6

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Currently connected network Tech. type is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCameraAppRunning()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCameraAppRunning()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isDisplayBitrate()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->mIsDisplayBitrate:Z

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isDisplayBitrate :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during isSimCardReady()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDomesticRoamingSettingInService()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEPDGCall(I)Z
    .locals 4
    .param p1    # I

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEPDGCall(Lcom/android/internal/telephony/Connection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFindService()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isIMSConferenceStateChanged()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSConferenceStateChanged()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isInternationalRoamingSettingInService()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInternationalRoamingSettingInServiceGsm()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMcidBlockNumber()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v1

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isMcidWithAlertInfo :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during isSimCardReady()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMcidWithAlertInfo()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isMcidWithAlertInfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error during isSimCardReady()."

    invoke-static {v3, v4, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPenWindow()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isPenWindow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isRoamingSettingInService()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVolteIconPossible()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsIms;->isVolteIconPossible(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isWBMode(I)Z
    .locals 5
    .param p1    # I

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "feature_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "phoneapp.amrwb.simulation"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isWBMode(Lcom/android/internal/telephony/Connection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public merge()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    :cond_0
    return-void
.end method

.method public mergeMultiSim(I)V
    .locals 3
    .param p1    # I

    sget-boolean v0, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multi-SIM merge, simSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/Phone;)V

    :cond_1
    return-void
.end method

.method public moveCameraTaskToBack()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->moveCameraTaskToBack()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public moveCameraTaskToFront()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->moveCameraTaskToFront()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 3
    .param p1    # Z

    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during mute()."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNewIncomingRcsSession(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2a

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during isSimCardReady()."

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playDtmfTone(CZ)V
    .locals 3
    .param p1    # C
    .param p2    # Z

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/DTMFTonePlayer;->playDtmfTone(CZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error playing DTMF tone."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postDialCancel(I)V
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    :cond_0
    return-void
.end method

.method public postDialWaitContinue(I)V
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    :cond_0
    return-void
.end method

.method public rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V
    .locals 8
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Z
    .param p3    # Ljava/lang/String;

    const/4 v0, -0x1

    :try_start_0
    const-string v2, ""

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    const-string v5, "roaming_auto_dial"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getRadNumber()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v5, v0}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v5, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rejectCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "roaming_auto_dial"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getRadNumber()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2, p3, v4}, Lcom/android/phone/RejectWithTextMessageManager;->rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-static {v2, p3}, Lcom/android/phone/RejectWithTextMessageManager;->rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v6, "Error during rejectCall()."

    invoke-static {v5, v6, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public requestModifyCall(II)Z
    .locals 9
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v5, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v5, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v6, "Cannot getCallWithId(); CallResult == null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    :try_start_0
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "volte_jpn_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isLowBatt()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/CallCommandService$ToastRunnable;

    iget-object v7, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    const v8, 0x7f090841

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/phone/CallCommandService$ToastRunnable;-><init>(Lcom/android/phone/CallCommandService;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v6, "Error during requestModifyCall()."

    invoke-static {v5, v6, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v5, p2, v1}, Lcom/android/phone/CallModeler;->createModifyCallResultMessage(II)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5, p1}, Lcom/android/phone/CallNotifier;->saveActionMemoFilePath(I)V

    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-static {v5, v2, p2}, Lcom/android/phone/PhoneUtils;->requestModifyCall(Lcom/android/internal/telephony/Connection;Landroid/os/Message;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestRcsObserver(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v1, "UNSUPPORTED RCS OBSERVER"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    sget-object v0, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v1, "request can only be handled for register/unregister"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public respondModifyCall(IZ)V
    .locals 6
    .param p1    # I
    .param p2    # Z

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "respondModifyCall()"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->stopUpgradeRequestTone()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallNotifier;->saveActionMemoFilePath(I)V

    invoke-virtual {v2}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/phone/PhoneUtils;->respondModifyCall(Lcom/android/internal/telephony/Connection;Z)V

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error during respondModifyCall()."

    invoke-static {v3, v4, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendMessage(Lcom/android/services/telephony/common/Call;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Ljava/lang/String;

    const/4 v0, -0x1

    :try_start_0
    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getRadNumber()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v3

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, p2, v3}, Lcom/android/phone/RejectWithTextMessageManager;->rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v2, p2}, Lcom/android/phone/RejectWithTextMessageManager;->rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v5, "Error during sendMessage()."

    invoke-static {v4, v5, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public separateCall(I)V
    .locals 6
    .param p1    # I

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "separateCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error trying to separate call."

    invoke-static {v3, v4, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 3
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1, p1}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error setting the audio mode."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallManagerAudioMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method

.method public setCallProtectionValue(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionStatus(Z)V

    return-void
.end method

.method public setCurrentVisibleSimId(I)V
    .locals 2
    .param p1    # I

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneGlobals;->setCurrentVisibleSimId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setEndCallNumberForLGTRAD(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    move-object v1, p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPenWindow(Z)V
    .locals 2
    .param p1    # Z

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneGlobals;->setPenWindow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPenWindowRectInfo()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->setRectInfo(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowingIncomingPopup(Z)V
    .locals 2
    .param p1    # Z

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iput-boolean p1, v1, Lcom/android/phone/PhoneGlobals;->mShowingIncomingPopup:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setSoundPath(I)V
    .locals 3
    .param p1    # I

    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setSoundPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during setSoundPath()."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSystemBarNavigationEnabled(Z)V
    .locals 4
    .param p1    # Z

    :try_start_0
    const-string v2, "feature_skt_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVideoCalling()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v1, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    invoke-virtual {v1, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error enabling or disabling system bar navigation"

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shouldVibrate()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->shouldVibrate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public silentRinger()V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    return-void
.end method

.method public speaker(Z)V
    .locals 3
    .param p1    # Z

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during speaker()."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTonePlayer;->stopDtmfTone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error stopping DTMF tone."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopNotificationFlash()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopNotiFlash()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error stopNotificationFlash"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public swap()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->swap()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during swap()."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public swapMultiSim(I)V
    .locals 7
    .param p1    # I

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multi-SIM swap, simSlot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSwapSecondCallState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Lcom/android/phone/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public webEx()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v1, "Pass via webEx"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtils;->onWebExClick()V

    return-void
.end method
