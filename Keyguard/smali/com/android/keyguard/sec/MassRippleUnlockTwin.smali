.class public Lcom/android/keyguard/sec/MassRippleUnlockTwin;
.super Landroid/widget/FrameLayout;
.source "MassRippleUnlockTwin.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;,
        Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;
    }
.end annotation


# instance fields
.field private final ACQUIRE_DVFS:I

.field protected final ANIMATION_DURATION:F

.field final CIRCLE_AFFORDANCE_ROUND_SIZE:F

.field final CIRCLE_ROUND_SIZE:F

.field private final COUNT_ANIMATION:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private DEBUG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field final MAX_RIPPLE_COUNT:I

.field final MSG_AFFORDANCE_TOUCH:I

.field final MSG_FIRST_TOUCH:I

.field final MSG_TIME_TICK:I

.field private final RELEASE_DVFS:I

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private diffPressTime:J

.field drawRippleCount:I

.field firstTouch_X:I

.field firstTouch_Y:I

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private indexAni:I

.field private isPlayAffordance:Z

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isStartUnlock:Z

.field private isSystemSoundChecked:Z

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

.field private mDistanceRatio:D

.field mHandler:Landroid/os/Handler;

.field mMovingRippleCount:I

.field private mRDownId:I

.field private mRUpId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private massRipple:[Landroid/widget/ImageView;

.field prevMovingDistance:F

.field private prevPressTime:J

.field scale:[Landroid/view/animation/Animation;

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field touchedEventX:F

.field touchedEventY:F

.field typeStorke:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->COUNT_ANIMATION:I

    new-array v2, v8, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const-wide v2, 0x3fe99999a0000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v2, 0x3ff4ccccc0000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->UNLOCK_DRAG_THRESHOLD:D

    const v2, 0x44a28000

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->ANIMATION_DURATION:F

    iput v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    iput v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->typeStorke:[F

    const/high16 v2, 0x43910000

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CIRCLE_ROUND_SIZE:F

    const/high16 v2, 0x43600000

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CIRCLE_AFFORDANCE_ROUND_SIZE:F

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_FIRST_TOUCH:I

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_AFFORDANCE_TOUCH:I

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_TIME_TICK:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MAX_RIPPLE_COUNT:I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    iput v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CPU_CLOCK_NUM:I

    iput-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    iput v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->GPU_FREQUNCY_NUM:I

    iput-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CPU_CLOK_CONTROL:I

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->GPU_FREQ_CONTROL:I

    const v2, 0x88b8

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->ACQUIRE_DVFS:I

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->RELEASE_DVFS:I

    iput-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    new-instance v2, Lcom/android/keyguard/sec/MassRippleUnlockTwin$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$1;-><init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    iput-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iput-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundTime:I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->SOUND_ID_DOWN:I

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->SOUND_ID_UP:I

    const v2, 0x7f050012

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    const v2, 0x7f050013

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "lentislte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x180600

    const v3, 0x11e1a300

    invoke-direct {p0, v5, v2, v5, v3}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->setValueOfDVFS(ZIZI)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030019

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-array v2, v8, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->setLayout()V

    return-void

    :array_0
    .array-data 4
        0x42440000
        0x41d4cccd
        0x42140000
        0x41f00000
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->getBestMaxFreq([II)I

    move-result v0

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->getBestMaxFreq([II)I

    move-result v1

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->acquireBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->acquireBooster(I)V

    :cond_1
    return-void
.end method

.method private checkSound()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearAllViews()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getBestMaxFreq([II)I
    .locals 6
    .param p1    # [I
    .param p2    # I

    const/4 v4, 0x0

    const v3, 0x7fffffff

    const/4 v1, 0x0

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v5, p1, v2

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    move v4, v2

    move v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private playDragSound(I)V
    .locals 9
    .param p1    # I

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    new-instance v7, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;-><init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;I)V

    invoke-virtual {v7}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->run()V

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7
    .param p1    # I

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->releaseBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->releaseBooster(I)V

    :cond_1
    return-void
.end method

.method private setLayout()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f040010

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f040011

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private setSound()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    const-string v2, "MassRippleUnlockTwin"

    const-string v3, "show mSoundPool is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v7

    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v7

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v6

    goto :goto_1
.end method

.method private setValueOfDVFS(ZIZI)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    iput p2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CPU_CLOCK_NUM:I

    const-string v0, "MassRippleUnlockTwin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MassRippleUnlockTwin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    iput p4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->GPU_FREQUNCY_NUM:I

    const-string v0, "MassRippleUnlockTwin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MassRippleUnlockTwin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public getCircleSize(IZ)F
    .locals 3
    .param p1    # I
    .param p2    # Z

    const/high16 v2, 0x43910000

    if-eqz p2, :cond_0

    const/high16 v0, 0x43600000

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x41a00000

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x385

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
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insdieViewTouchedEventX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "insdieViewTouchedEventY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    if-ne v5, v8, :cond_4

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    if-ne v5, v8, :cond_4

    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_DOWN First Touch"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v5, v2

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    float-to-int v5, v3

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    :goto_0
    iput v9, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-nez v5, :cond_1

    new-instance v5, Landroid/media/SoundPool;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v10, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    new-array v5, v11, [I

    iput-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    new-instance v0, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v6, v7, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v9

    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v6, v7, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v10

    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {p0, v5, v6, v9, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playSound(I)V

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iput v9, v4, Landroid/os/Message;->what:I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_3
    return v10

    :cond_4
    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    iput v12, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    invoke-virtual {v6, v7, v8, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v9

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    invoke-virtual {v6, v7, v8, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v10

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v11, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->moveToDistanceIs20percent(FF)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    invoke-virtual {p0, v2, v3, v11, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    :goto_4
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playDragSound(I)V

    :cond_9
    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v7, 0x3ff4ccccc0000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove DRAG threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const/4 v5, 0x3

    invoke-virtual {p0, v2, v3, v5, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v10, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    :cond_c
    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    iput v12, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-lez v5, :cond_d

    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playSound(I)V

    :cond_d
    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v7, 0x3fe99999a0000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove RELEASE threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_HOVER_ENTER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v5, :cond_3

    :cond_f
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v1, "MassRippleUnlockTwin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEventForPatternLock action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    const-string v1, "MassRippleUnlockTwin"

    const-string v2, "ACTION_DOWN => ACTION_HOVER_ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    return-void
.end method

.method public moveToDistanceIs20percent(FF)Z
    .locals 16
    .param p1    # F
    .param p2    # F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    move/from16 v0, p1

    float-to-int v11, v0

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    move/from16 v0, p2

    float-to-int v11, v0

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "MassRippleUnlockTwin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTouchEvent() : diffX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",diffY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-double v12, v2

    const-wide/high16 v14, 0x4000000000000000L

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double v5, v10, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_1
    int-to-double v10, v7

    const-wide/high16 v12, 0x4000000000000000L

    div-double v8, v10, v12

    div-double v10, v3, v8

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-string v10, "MassRippleUnlockTwin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTouchEvent() : threshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",mDistanceRatio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v12, 0x3fdccccccccccccdL

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fdccccccccccccdL

    cmpl-double v10, v10, v12

    if-lez v10, :cond_4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " originalCircleX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originalCircleY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " touchedEventX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", touchedEventY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    const/4 v2, 0x0

    return v2
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public releaseBooster(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedCPUClockTable:[I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->supportedGPUFreqTable:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public rippeDown(FFIZ)V
    .locals 15
    .param p1    # F
    .param p2    # F
    .param p3    # I
    .param p4    # Z

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_1
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->getCircleSize(IZ)F

    move-result v8

    iget-object v13, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v14, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    new-instance v2, Lcom/android/keyguard/sec/MassRippleImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->typeStorke:[F

    aget v4, v4, p3

    float-to-int v5, v8

    float-to-int v6, v8

    const v7, 0x44a28000

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/sec/MassRippleImageView;-><init>(Landroid/content/Context;FIIF)V

    aput-object v2, v13, v14

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, p1

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v10, v2, v3

    move/from16 v0, p2

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v11, v2, v3

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveX X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "moveY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    rem-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineStroke = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indexAni = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public screenTurnedOff()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->checkSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->setSound()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    if-nez v0, :cond_2

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "== DVFS == new DVFSHandlerForMassRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;-><init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    :cond_2
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 6
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "MassRippleUnlockTwin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnlockAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startDelay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    iget-boolean v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
