.class public Lcom/android/keyguard/sec/CircleLockScreenMotion;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCameraMotionListener:Landroid/hardware/motion/MRListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMotionReady:Z

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mTiltMotionListener:Landroid/hardware/motion/MRListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CircleLockScreenMotion"

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionReady:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;-><init>(Lcom/android/keyguard/sec/CircleLockScreenMotion;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    new-instance v0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;-><init>(Lcom/android/keyguard/sec/CircleLockScreenMotion;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleLockScreenMotion;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleLockScreenMotion;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleLockScreenMotion;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleLockScreenMotion;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionReady:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleLockScreenMotion;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleLockScreenMotion;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->unregisterListener()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->resetMotionEngine()V

    return-void
.end method

.method public registerListener()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v5, "register motion listener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_unlock_camera_short_cut"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMotionLockscreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isCameraShortCut = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v4, 0x800

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public resetMotionEngine()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v1, "reset motion engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionManager;->resetMotionEngine()I

    return-void
.end method

.method public setMotionReady(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionReady:Z

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v1, "unregister motion listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_2
    return-void
.end method
