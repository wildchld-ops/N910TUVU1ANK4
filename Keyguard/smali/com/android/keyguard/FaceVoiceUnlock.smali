.class public Lcom/android/keyguard/FaceVoiceUnlock;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/keyguard/BiometricSensorUnlock;
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private callingUserId:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field protected mFaceUnlocked:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mIsVoiceUnlockOn:Z

.field mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private mTalkbackEnabled:Z

.field mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

.field private mVoiceVerifyStarted:Z

.field protected mWakeUnlocked:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

.field private mWakeUpHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    const/16 v5, 0x1388

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    const/16 v5, 0xa

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_INIT_WAKEUP_CMD:I

    const/16 v5, 0xb

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_START_VERIFY_CMD:I

    const/16 v5, 0xc

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_TERMINATE_VERIFY_CMD:I

    const/16 v5, 0xd

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_DESTROY_WAKEUP_CMD:I

    new-instance v5, Lcom/android/keyguard/FaceVoiceUnlock$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/FaceVoiceUnlock$2;-><init>(Lcom/android/keyguard/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    new-instance v5, Lcom/android/keyguard/FaceVoiceUnlock$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/FaceVoiceUnlock$3;-><init>(Lcom/android/keyguard/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "(?i).*talkback.*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    iget-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-eqz v5, :cond_3

    const-string v5, "FULLockscreen"

    const-string v6, "tb on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_unlock_screen_contents"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v4, :cond_4

    if-ne v2, v4, :cond_4

    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    const-string v5, "FULLockscreen"

    const-string v6, "drv mode on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string v5, "FULLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTalkbackEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_face_with_voice"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    const-string v3, "FULLockscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsVoiceUnlockOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->initWakeUpHandler()V

    return-void

    :cond_3
    const-string v5, "FULLockscreen"

    const-string v6, "tb off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 1
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 0
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/FaceVoiceUnlock;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/FaceVoiceUnlock;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/FaceVoiceUnlock;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/keyguard/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1    # Lcom/android/internal/policy/IFaceLockInterface;

    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/FaceVoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/FaceVoiceUnlock;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;

    iget v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/FaceVoiceUnlock;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    return p1
.end method

.method private checkIfVoiceUnlockErrorShowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->isErrorShowed()Z

    move-result v0

    return v0
.end method

.method private displayPrepareMsg()V
    .locals 4

    const-string v0, "FULLockscreen"

    const-string v1, "displayPrepareMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayPrepareMsg()V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private displayVerifyFailMsg()V
    .locals 3

    const-string v0, "FULLockscreen"

    const-string v1, "displayVerifyFailMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayVerifyFailMsg()V

    return-void
.end method

.method private displayVerifySuccessMsg()V
    .locals 5

    const-string v1, "FULLockscreen"

    const-string v2, "displayVerifySuccessMsg()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayVerifySuccessMsg()V

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private hideVoiceLayout()V
    .locals 2

    const-string v0, "FULLockscreen"

    const-string v1, "hideVoiceLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->hideVoiceLayout()V

    return-void
.end method

.method private initWakeUpHandler()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/FaceVoiceUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/FaceVoiceUnlock$1;-><init>(Lcom/android/keyguard/FaceVoiceUnlock;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .locals 9
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const-string v0, "FULLockscreen"

    const-string v1, "startUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    :goto_0
    monitor-exit v8

    :goto_1
    return-void

    :catch_0
    move-exception v7

    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopUi()V
    .locals 5

    const-string v1, "FULLockscreen"

    const-string v2, "stopUi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_0

    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    :goto_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    const-string v1, "FULLockscreen"

    const-string v3, "stopUi() attempted while not running"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private updateVolume(I)V
    .locals 2
    .param p1    # I

    const-string v0, "FULLockscreen"

    const-string v1, "updateVolume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->updateVolume(I)V

    return-void
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public OnRmsForWave(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/FaceVoiceUnlock;->updateVolume(I)V

    return-void
.end method

.method public OnSpectrumData([I)V
    .locals 0
    .param p1    # [I

    return-void
.end method

.method public OnVerifyResult(IS)V
    .locals 4
    .param p1    # I
    .param p2    # S

    const/4 v3, 0x1

    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    :cond_0
    if-ne p1, v3, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup + Face Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayVerifySuccessMsg()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, -0xa

    if-eq p1, v0, :cond_4

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    :cond_4
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eq p1, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup Fail after FaceLock recognition successed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayVerifyFailMsg()V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_7
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    const-string v0, "FULLockscreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->hideVoiceLayout()V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopUi()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method handleCancel()V
    .locals 3

    const-string v0, "FULLockscreen"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleServiceConnected()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleServiceDisconnected()V

    goto :goto_1

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleUnlock(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleCancel()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FaceVoiceUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleTimeout()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_0
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 2

    const-string v0, "FULLockscreen"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    return-void
.end method

.method handleServiceConnected()V
    .locals 8

    const/4 v4, 0x0

    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    const/4 v0, 0x2

    new-array v7, v0, [I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/FaceVoiceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    goto :goto_0

    :cond_2
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceDisconnected()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleTimeout()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayVerifyFailMsg()V

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method handleUnlock(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    const-string v1, "FULLockscreen"

    const-string v2, "handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopFaceLock()Z

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayPrepareMsg()V

    :goto_1
    return-void

    :cond_0
    const-string v1, "FULLockscreen"

    const-string v2, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stop()Z

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_3

    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stop()Z

    goto :goto_2

    :cond_3
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unlock for authenticated user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because the current user is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public start()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string v0, "FULLockscreen"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_3

    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to Face Unlock service for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    iput-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    return v5

    :cond_3
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    const/4 v3, 0x0

    const-string v1, "FULLockscreen"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->hideVoiceLayout()V

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopUi()V

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    return v0

    :cond_3
    const-string v1, "FULLockscreen"

    const-string v2, "Attempt to unbind from Face Unlock when not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopAndShowBackup()V
    .locals 2

    const-string v0, "FULLockscreen"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopFaceLock()Z
    .locals 4

    const/4 v3, 0x0

    const-string v1, "FULLockscreen"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopUi()V

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    return v0

    :cond_2
    const-string v1, "FULLockscreen"

    const-string v2, "Attempt to unbind from Face Unlock when not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
