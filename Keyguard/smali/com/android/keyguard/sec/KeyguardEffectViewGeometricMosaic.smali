.class public Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;
.super Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicView;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMaxValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isFadeOutSound:Z

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field mLongPressTime:J

.field private mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMaxClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->UNLOCK_SOUND_PLAY_TIME:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->SOUND_ID_TAB:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->SOUND_ID_DRAG:I

    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->SOUND_ID_UNLOCK:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    const-wide/16 v4, 0x19b

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const v4, 0x3d23d70a

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v5, 0x20000

    if-lt v4, v5, :cond_4

    :goto_0
    new-instance v4, Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    invoke-direct {v4, p1, p0}, Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    if-eqz v2, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->setEGLContextClientVersion(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->sounds:[I

    sget-object v4, Lcom/sec/android/visualeffect/utils/VisualEffectDVFSValue;->GPU_MAX_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v4, :cond_0

    const v4, 0xe4e1c00

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->gpuMaxValue:I

    :cond_0
    const-string v4, "GeometricMosaic Keyguard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useGPUMaxClock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", gpuMaxValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->gpuMaxValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/visualeffect/utils/VisualEffectDVFSValue;->CPU_MAX_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v4, :cond_1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->cpuMaxValue:I

    :cond_1
    const-string v3, "GeometricMosaic Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useCPUMaxClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpuMaxValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->cpuMaxValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->gpuMaxValue:I

    const v6, 0x9c40

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const/16 v4, 0xd

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->cpuMaxValue:I

    const v6, 0x9c40

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto/16 :goto_0

    :cond_5
    const-string v4, "GeometricMosaic Keyguard"

    const-string v5, "not support 2.0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->clearEffect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;
    .param p1    # Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    return-void
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v5, :cond_0

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearEffect()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fadeOutSound()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$8;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSound()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const v3, 0x7f050006

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const v3, 0x7f050005

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const v4, 0x7f050007

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$6;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1    # I

    const/high16 v6, 0x3f800000

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->checkSound()V

    const-string v0, "GeometricMosaic Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "GeometricMosaic Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$7;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-eqz v3, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    if-nez v0, :cond_4

    const-string v3, "GeometricMosaic Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchEvent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_1

    const-string v3, "GeometricMosaic Keyguard"

    const-string v4, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->checkSound()V

    :cond_1
    const-string v3, "GeometricMosaic Keyguard"

    const-string v4, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    :cond_3
    :goto_1
    new-instance v3, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;III)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-nez v3, :cond_3

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    iget-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    iget-wide v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    iget-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const-string v3, "GeometricMosaic Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    goto :goto_1

    :cond_5
    if-eq v0, v7, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    :cond_6
    const-string v3, "GeometricMosaic Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchEvent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v3, :cond_3

    const v3, 0x3d1fbe77

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v2, 0x1

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->unlockEffect()V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    const v0, 0x3d71a9fc

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    const-string v0, "GeometricMosaic Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-nez v0, :cond_2

    const v0, 0x3d1fbe77

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->clearEffect()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->clearEffect()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->clearEffect()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_1
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->clearEffect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "GeometricMosaic Keyguard"

    const-string v1, "showUnlockAffordance - call renderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unlockEffect()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$5;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update()V
    .locals 24

    const-string v5, "GeometricMosaic Keyguard"

    const-string v7, "update"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v21

    if-nez v21, :cond_2

    const-string v5, "GeometricMosaic Keyguard"

    const-string v7, "newBitmapDrawable  is null"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v20

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v7, :cond_3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/sec/android/visualeffect/utils/BitmapTools;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v5, v6, v10

    new-array v4, v5, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    invoke-virtual {v5, v4, v6, v10}, Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;->setLandscapeBitmap([III)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sec/android/visualeffect/utils/BitmapTools;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v5, v14, v18

    new-array v12, v5, [I

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    move/from16 v17, v14

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-string v5, "GeometricMosaic Keyguard"

    const-string v7, "update - transfer bitmap"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    move/from16 v0, v18

    invoke-virtual {v5, v12, v14, v0}, Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;->setPortraitBitmap([III)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    goto :goto_1
.end method
