.class public Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
.super Ljava/lang/Thread;
.source "KeyguardVoiceEngineThread.java"

# interfaces
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# instance fields
.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_LAUNCH_CMD:I

.field private final MSG_QUIT_LOOPER:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private final STATUS_AUTO_UNLOCK_ENABLED:I

.field private final STATUS_DRIVING_MODE_ENABLED:I

.field private final STATUS_PACKAGE_ENABLE:I

.field private final STATUS_TALKBACK_SERVICE_ENABLED:I

.field private final STATUS_VOICE_ENGINE_SUPPORT:I

.field private final STATUS_WAKE_UP_SETTINGS:I

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIsAvailable:Z

.field private mIsRunning:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mVEPowerManager:Landroid/os/PowerManager;

.field private mVThreadHandler:Landroid/os/Handler;

.field private mVoiceVerifyStarted:Z

.field private mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "KeyguardVoiceEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-string v0, "KeyguardVoiceEngineThread"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->TAG:Ljava/lang/String;

    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_INIT_WAKEUP_CMD:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_START_VERIFY_CMD:I

    const/16 v0, 0x82

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_TERMINATE_VERIFY_CMD:I

    const/16 v0, 0x8c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_DESTROY_WAKEUP_CMD:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_QUIT_LOOPER:I

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_LAUNCH_CMD:I

    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_WAKE_UP_SETTINGS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_PACKAGE_ENABLE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_TALKBACK_SERVICE_ENABLED:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_DRIVING_MODE_ENABLED:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_VOICE_ENGINE_SUPPORT:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_AUTO_UNLOCK_ENABLED:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->checkCondition()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->dismissLockScreen()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/os/PowerManager;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->updateNotification(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUpVariables()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkCondition()V
    .locals 15

    const/4 v14, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    const/4 v6, 0x0

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wake_up_lock_screen"

    invoke-static {v11, v12, v10, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v9, :cond_5

    move v4, v9

    :goto_0
    if-eqz v4, :cond_0

    add-int/lit8 v6, v6, 0x1

    :try_start_0
    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v11, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v11, :cond_6

    add-int/lit8 v6, v6, 0x2

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v6, v6, 0x20

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    :cond_1
    iget-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v11, "(?i).*talkback.*"

    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x4

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    :cond_2
    iget-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "driving_mode_on"

    invoke-static {v11, v12, v10, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "driving_mode_unlock_screen_contents"

    invoke-static {v11, v12, v10, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v1, v9, :cond_3

    if-ne v8, v9, :cond_3

    add-int/lit8 v6, v6, 0x8

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    :cond_3
    iget-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v9, :cond_4

    :try_start_1
    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Create WakeUpCmdRecognizer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {v9, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setContext(Landroid/content/Context;)V

    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Create WakeUpCmdRecognizer - finished"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->getEnableWakeUp()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v6, v6, 0x10

    :cond_4
    :goto_2
    const-string v9, "KeyguardVoiceEngineThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "condition = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move v4, v10

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    const-string v11, "KeyguardVoiceEngineThread"

    const-string v12, "package not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private cleanUpVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    return-void
.end method

.method private dismissLockScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->unlock()V

    :cond_0
    return-void
.end method

.method private isActiveStreamExist()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "mAudioManager null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private launch(S)V
    .locals 3
    .param p1    # S

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateNotification(Z)V
    .locals 5
    .param p1    # Z

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const-string v1, "keyguard_wakeup"

    const v2, 0x7f0201fa

    const-string v3, "Keyguard wakeup"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "keyguard_wakeup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "keyguard_wakeup"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private wakeUpInit()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
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

    return-void
.end method

.method public OnSpectrumData([I)V
    .locals 0
    .param p1    # [I

    return-void
.end method

.method public OnVerifyResult(IS)V
    .locals 3
    .param p1    # I
    .param p2    # S

    const-string v0, "KeyguardVoiceEngineThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    if-nez v0, :cond_1

    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "mIsRunning is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, -0xa

    if-eq p1, v0, :cond_3

    const/16 v0, -0xb

    if-ne p1, v0, :cond_4

    :cond_3
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v0, -0xc

    if-ne p1, v0, :cond_5

    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() voice recognition failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->launch(S)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUpVariables()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected removeAllMsgs()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->wakeUpInit()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method

.method public setVoiceRecognitionFailCue()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->setVoiceRecognitionFailCue()V

    :cond_0
    return-void
.end method
