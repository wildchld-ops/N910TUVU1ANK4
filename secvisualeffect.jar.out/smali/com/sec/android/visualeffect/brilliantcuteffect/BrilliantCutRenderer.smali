.class public Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;
.super Ljava/lang/Object;
.source "BrilliantCutRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;
    }
.end annotation


# instance fields
.field private final ACQUIRE_DVFS:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private final IMAGE_TYPE_NORAL:I

.field private final IMAGE_TYPE_SPECIAL:I

.field private final LANDSCAPE_MODE:I

.field private final PORTRAIT_MODE:I

.field private final RELEASE_DVFS:I

.field private final TAG:Ljava/lang/String;

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field private brightnessForAffordanceAndUnlock:F

.field private brightnessForTouchNormal:F

.field private brightnessForTouchSpecial:F

.field private calledScreenTurnedOn:Z

.field centerX:F

.field centerY:F

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private final dragSoudMinusOffsetForTouchUp:F

.field private final dragSoudMinusOffsetForUnlock:F

.field private dragSoudVolume:F

.field private dragSreamID:I

.field durationForNormal:I

.field durationForSpecial:I

.field private fpsCount:I

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private imageType:I

.field private isCleanup:Z

.field private isDragSoudStartForTouchUp:Z

.field private isDragSoudStartForUnlock:Z

.field isFirstSurfaceChanged:Z

.field private final isFpsChecked:Z

.field private isOrientationChangCount:I

.field private isOrientationChanged:Z

.field private isPrevSurfaceWidth:I

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isSurfaceChanged:Z

.field isSurfaceCreated:Z

.field isTouched:Z

.field mBgChangeCheckQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mClearEffectQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mDrawAffordanceCount:I

.field private mDrawCount:I

.field mLandscapeBG:Landroid/graphics/Bitmap;

.field mParent:Landroid/opengl/GLSurfaceView;

.field mPortraitBG:Landroid/graphics/Bitmap;

.field private mResource:Landroid/graphics/Bitmap;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTabletMode:I

.field mUnLockEffectQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private nextTermSpeed:I

.field private phoneMode:I

.field private radiusForNormal:F

.field private radiusForSpecial:F

.field private repeatCount:I

.field speedForAfforance:I

.field private speedForTouch:I

.field private startTime:J

.field stroke:F

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field windowHeight:I

.field windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;III)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->DBG:Z

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowWidth:I

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowHeight:I

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->IMAGE_TYPE_NORAL:I

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->IMAGE_TYPE_SPECIAL:I

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->PORTRAIT_MODE:I

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->LANDSCAPE_MODE:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isFirstSurfaceChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isSurfaceCreated:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isCleanup:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mTabletMode:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChangCount:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isSurfaceChanged:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isPrevSurfaceWidth:I

    iput v5, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->CPU_CLOCK_NUM:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    iput v5, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->GPU_FREQUNCY_NUM:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->CPU_CLOK_CONTROL:I

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->GPU_FREQ_CONTROL:I

    const v0, 0x88b8

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->ACQUIRE_DVFS:I

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->RELEASE_DVFS:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mClearEffectQueue:Ljava/util/Queue;

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForUnlock:Z

    iput v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    const v0, 0x3d1fbe77

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudMinusOffsetForTouchUp:F

    const v0, 0x3d71a9fc

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudMinusOffsetForUnlock:F

    const v0, 0x3eae147b

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->radiusForSpecial:F

    const v0, 0x3e6b851f

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->radiusForNormal:F

    iput v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForAffordanceAndUnlock:F

    const v0, 0x3eb33333

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForTouchNormal:F

    const v0, 0x3ee66666

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForTouchSpecial:F

    const/16 v0, 0x640

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->speedForTouch:I

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->repeatCount:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->nextTermSpeed:I

    const/high16 v0, 0x40a00000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->centerX:F

    const/high16 v0, -0x3f600000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->centerY:F

    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->stroke:F

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->speedForAfforance:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->durationForSpecial:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->durationForNormal:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isFpsChecked:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->fpsCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->startTime:J

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "BrilliantCutEffect BrilliantCutRenderer Constructor 2014-05-28"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iput p3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mTabletMode:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isFirstSurfaceChanged:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mClearEffectQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    iput p4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowWidth:I

    iput p5, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowHeight:I

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->jniInit()V

    return-void
.end method

.method private StopDragSound()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "SOUND STOP DRAG!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForUnlock:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->getBestMaxFreq([II)I

    move-result v0

    const-string v2, "BrilliantCut_BrilliantCutRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->getBestMaxFreq([II)I

    move-result v1

    const-string v2, "BrilliantCut_BrilliantCutRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->acquireBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->acquireBooster(I)V

    :cond_1
    return-void
.end method

.method private declared-synchronized checkDirtyMode()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->getFinishRenderingFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mClearEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDirtyMode() Drity Mode mDrawAffordanceCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    if-eqz v0, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "SOUND STOP because DIRTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->StopDragSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getBestMaxFreq([II)I
    .locals 6

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

.method private getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const-string v7, "BrilliantCut_BrilliantCutRenderer"

    const-string v8, "getCenterCropBitmap()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    const-string v7, "BrilliantCut_BrilliantCutRenderer"

    const-string v8, "bmp is horizontally"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v7, v9, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v7, "BrilliantCut_BrilliantCutRenderer"

    const-string v8, "bmp is vertically"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v9, v7, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private jniInit()V
    .locals 5

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jniInit(), imageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->init()V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mTabletMode:I

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForAffordanceAndUnlock:F

    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForGeneral(IF)V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->radiusForSpecial:F

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForTouchSpecial:F

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->speedForTouch:I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->repeatCount:I

    iget v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->nextTermSpeed:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForTouch(FFIII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->radiusForNormal:F

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForTouchNormal:F

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->speedForTouch:I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->repeatCount:I

    iget v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->nextTermSpeed:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForTouch(FFIII)V

    goto :goto_0
.end method

.method private printFPS()V
    .locals 6

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->fpsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->fpsCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->startTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const-string v2, "BrilliantCut_BrilliantCutRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->fpsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", JniBrilliantCutLib.getFinishRenderingFlag() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->getFinishRenderingFlag()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->startTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->fpsCount:I

    :cond_0
    return-void
.end method

.method private recycleBG()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "recycleBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "mPortraitBG.recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "mLandscapeBG.recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private recycleResource()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mResource:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mResource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mResource:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private releaseCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->releaseBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->releaseBooster(I)V

    :cond_1
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "bg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized checkBackground()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "Change opengl BG Texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->setBGTexture()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkClearEffect()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mClearEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->clearEffect()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mClearEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mClearEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public checkDragSoundFadeOut()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForUnlock:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iput v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    const v1, 0x3d1fbe77

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    const v1, 0x3d71a9fc

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    goto :goto_0

    :cond_4
    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->StopDragSound()V

    goto :goto_0
.end method

.method public checkOrientation()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isSurfaceChanged:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChangCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    :cond_0
    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChangCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChangCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChangCount:I

    goto :goto_0
.end method

.method public checkUnlockEffect()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= checkUnlockEffect imageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", durationForSpecial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->durationForSpecial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->durationForSpecial:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForUnlock(I)V

    :goto_0
    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->unlockEffect()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->durationForNormal:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForUnlock(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isCleanup:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$1;-><init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized clearEffects()V
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    if-le v0, v1, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "clearEffects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mClearEffectQueue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyed()V
    .locals 2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->destroy()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    :cond_1
    return-void
.end method

.method public drawBrilliantCut()V
    .locals 2

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->onDrawFrame()V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isSurfaceChanged:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChangCount:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->checkBackground()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->checkClearEffect()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->checkUnlockEffect()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->checkOrientation()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->checkDragSoundFadeOut()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->drawBrilliantCut()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->printFPS()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->checkDirtyMode()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isSurfaceChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isPrevSurfaceWidth:I

    if-ne v0, p2, :cond_2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "isPrevSurfaceWidth == width"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iput p2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isPrevSurfaceWidth:I

    if-le p2, p3, :cond_3

    iput v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->phoneMode:I

    :goto_1
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->phoneMode:I

    invoke-static {p2, p3, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->onSurfaceChanged(III)V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->centerX:F

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->centerY:F

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->stroke:F

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->speedForAfforance:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForAffordance(FFFI)V

    iput v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->phoneMode:I

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isSurfaceCreated:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isPrevSurfaceWidth:I

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->onSurfaceCreated()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->setReourceTexture()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v3, "BrilliantCut_BrilliantCutRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    const-string v3, "BrilliantCut_BrilliantCutRenderer"

    const-string v4, "ACTION_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    invoke-static {v1, v2, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->onTouchEvent(FFI)V

    goto :goto_0

    :pswitch_1
    const-string v3, "BrilliantCut_BrilliantCutRenderer"

    const-string v4, "ACTION_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    invoke-static {v1, v2, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->onTouchEvent(FFI)V

    goto :goto_0

    :pswitch_2
    const-string v3, "BrilliantCut_BrilliantCutRenderer"

    const-string v4, "ACTION_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    invoke-static {v1, v2, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->onTouchEvent(FFI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public releaseBooster(I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedCPUClockTable:[I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->supportedGPUFreqTable:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->clearEffects()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z

    return-void
.end method

.method public sendDragSoundFadeOutForTouchUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForUnlock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    :cond_0
    return-void
.end method

.method public sendDragSoundFadeOutForUnlock()V
    .locals 2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "SOUND RENDER UNLOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForUnlock:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSoudVolume:F

    goto :goto_0
.end method

.method public sendDragSoundInfo(Landroid/media/SoundPool;I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND sendDragSoundInfo dragSreamID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", soundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput p2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->dragSreamID:I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForUnlock:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isDragSoudStartForTouchUp:Z

    return-void
.end method

.method public setBGTexture()V
    .locals 2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "setBGTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->setPortraitBGBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->setLandscapeBGBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->recycleBG()V

    return-void

    :cond_1
    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "mPortraitBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "mLandscapeBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setReourceTexture()V
    .locals 2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "setReourceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mResource:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->setResourceBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->recycleResource()V

    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mResource:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setValueOfDVFS(ZIZI)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    iput p2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->CPU_CLOCK_NUM:I

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    iput p4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->GPU_FREQUNCY_NUM:I

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public settingsForImageType(I)V
    .locals 5

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settingsForImageType() imageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForImageType(I)V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->imageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->radiusForSpecial:F

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForTouchSpecial:F

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->speedForTouch:I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->repeatCount:I

    iget v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->nextTermSpeed:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForTouch(FFIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->radiusForNormal:F

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->brightnessForTouchNormal:F

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->speedForTouch:I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->repeatCount:I

    iget v4, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->nextTermSpeed:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->settingsForTouch(FFIII)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isCleanup:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    if-nez v0, :cond_2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "== DVFS == new DVFSHandlerWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;-><init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    :cond_2
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;-><init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public unlockEffect()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I

    if-le v0, v2, :cond_1

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    const-string v1, "unlockWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isTouched:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDVFSHandlerBrilliantCut:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
