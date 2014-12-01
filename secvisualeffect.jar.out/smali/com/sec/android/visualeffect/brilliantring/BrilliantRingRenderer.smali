.class public Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;
.super Ljava/lang/Object;
.source "BrilliantRingRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;
    }
.end annotation


# static fields
.field public static final QUALITY_LEVEL_0:I = 0x0

.field public static final QUALITY_LEVEL_1:I = 0x1

.field public static final QUALITY_LEVEL_2:I = 0x2

.field public static final QUALITY_LEVEL_3:I = 0x3

.field private static mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;


# instance fields
.field private final ACQUIRE_DVFS:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private final EVENT_CLEAR:I

.field private final EVENT_DISABLE_TILT:I

.field private final EVENT_ENABLE_TILT:I

.field private final EVENT_TILT_ALPHA:I

.field private final EVENT_UNLOCK:I

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private final RELEASE_DVFS:I

.field private final TAG:Ljava/lang/String;

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field private calledScreenTurnedOn:Z

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private currentAlpha:F

.field private dragSoudMinusOffsetForTouchUp:F

.field private dragSoudMinusOffsetForUnlock:F

.field private dragSoudVolume:F

.field private dragSreamID:I

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private isCleanup:Z

.field private isDragSoudStartForTouchUp:Z

.field private isDragSoudStartForUnlock:Z

.field private isEnableTilt:Z

.field isFirstSurfaceChanged:Z

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

.field mCountOfDirtyMode:I

.field private mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mDiamondPT:Landroid/graphics/Bitmap;

.field private mDrawCount:I

.field mLandscapeBG:Landroid/graphics/Bitmap;

.field mLandscapeTiltBG:Landroid/graphics/Bitmap;

.field mParent:Landroid/opengl/GLSurfaceView;

.field mPortraitBG:Landroid/graphics/Bitmap;

.field mPortraitTiltBG:Landroid/graphics/Bitmap;

.field private mQualityLevel:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTabletMode:I

.field private mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

.field mTitlImageChangeCheckQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field final pointer_xpos:[I

.field final pointer_ypos:[I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field windowHeight:I

.field windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ILcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;III)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->DBG:Z

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitTiltBG:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeTiltBG:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->calledScreenTurnedOn:Z

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_xpos:[I

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_ypos:[I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->EVENT_CLEAR:I

    const/16 v0, 0x5b

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->EVENT_UNLOCK:I

    const/16 v0, 0x62

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->EVENT_ENABLE_TILT:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->EVENT_DISABLE_TILT:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->EVENT_TILT_ALPHA:I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isFirstSurfaceChanged:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceCreated:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mCountOfDirtyMode:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isCleanup:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChangCount:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceChanged:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isPrevSurfaceWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isEnableTilt:Z

    iput v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->CPU_CLOCK_NUM:I

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    iput v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->GPU_FREQUNCY_NUM:I

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->CPU_CLOK_CONTROL:I

    iput v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->GPU_FREQ_CONTROL:I

    const v0, 0x88b8

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->ACQUIRE_DVFS:I

    iput v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->RELEASE_DVFS:I

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mClearEffectQueue:Ljava/util/Queue;

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mQualityLevel:I

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForUnlock:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    const v0, 0x3d1fbe77

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudMinusOffsetForTouchUp:F

    const v0, 0x3d71a9fc

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudMinusOffsetForUnlock:F

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "BrilliantRingRenderer Constructor 2014-01-08, preSetBGTexture test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    sput-object p4, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    iput p3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    iput p5, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mQualityLevel:I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->Init_PhysicsEngineJNI()V

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isFirstSurfaceChanged:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mClearEffectQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    iput p6, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iput p7, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    new-instance v0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-direct {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    new-instance v1, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$1;-><init>(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->registerAlphaChangedListener(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;)V

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private StopDragSound()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "SOUND STOP DRAG!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForUnlock:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F

    return p1
.end method

.method static synthetic access$100()Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->calledScreenTurnedOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->getBestMaxFreq([II)I

    move-result v0

    const-string v2, "BrilliantRing_BrilliantRingRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->getBestMaxFreq([II)I

    move-result v1

    const-string v2, "BrilliantRing_BrilliantRingRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->acquireBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->acquireBooster(I)V

    :cond_1
    return-void
.end method

.method private checkDirtyMode()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->isEmpty()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mClearEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mJniBrilliantRing is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mCountOfDirtyMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mCountOfDirtyMode:I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mCountOfDirtyMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "checkDirtyMode() Drity Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mCountOfDirtyMode:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "SOUND STOP because DIRTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->StopDragSound()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    rem-int/lit8 v0, v0, 0x64

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mJniBrilliantRing is not Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    const-string v7, "BrilliantRing_BrilliantRingRenderer"

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

    const-string v7, "BrilliantRing_BrilliantRingRenderer"

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
    const-string v7, "BrilliantRing_BrilliantRingRenderer"

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

.method private recycleBG()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private recycleResource()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDiamondPT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDiamondPT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDiamondPT:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private recycleTiltBG()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitTiltBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitTiltBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitTiltBG:Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeTiltBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeTiltBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeTiltBG:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private releaseCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->releaseBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->releaseBooster(I)V

    :cond_1
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

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
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

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
    invoke-virtual {p0, p1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

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
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "Change opengl BG Texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->preSetBGTexture()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

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
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mClearEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "onDrawFrame, mJniBrilliantRing.onKeyEvent(EVENT_CLEAR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onKeyEvent(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mClearEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mClearEffectQueue:Ljava/util/Queue;

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

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForUnlock:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iput v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    iget v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudMinusOffsetForTouchUp:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudMinusOffsetForUnlock:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    goto :goto_0

    :cond_4
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->StopDragSound()V

    goto :goto_0
.end method

.method public checkOrientation()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceChanged:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChangCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    :cond_0
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChangCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChangCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChangCount:I

    goto :goto_0
.end method

.method public declared-synchronized checkTiltImage()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isEnableTilt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isEnableTilt:Z

    if-eqz v0, :cond_2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "Enable Tilt Effect & Change opengl Tilt Texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const/16 v1, 0x62

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onCustomEvent(IF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->setTiltEnable(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const/16 v1, 0x64

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onCustomEvent(IF)V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->preSetTiltTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "disable Tilt Effect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onCustomEvent(IF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->setTiltEnable(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const/16 v1, 0x64

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onCustomEvent(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized checkUnlockEffect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "onDrawFrame, mJniBrilliantRing.onKeyEvent(EVENT_UNLOCK)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onKeyEvent(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

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

.method public cleanUp()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isCleanup:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->calledScreenTurnedOn:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;-><init>(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized clearEffect()V
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    if-le v0, v1, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "synchronized clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mClearEffectQueue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z
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

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->DeInit_PhysicsEngineJNI()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    :cond_1
    return-void
.end method

.method public drawBrilliantRing()V
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->preSetTexture()V

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->Draw_PhysicsEngine()V

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceChanged:Z

    return-void
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isEnableTilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->handleSensorEvent(Landroid/hardware/SensorEvent;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChangCount:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->checkBackground()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->checkTiltImage()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->checkClearEffect()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->checkUnlockEffect()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->checkOrientation()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->checkDragSoundFadeOut()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->drawBrilliantRing()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->checkDirtyMode()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

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

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isPrevSurfaceWidth:I

    if-ne v0, p2, :cond_3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "isPrevSurfaceWidth == width"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput p2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isPrevSurfaceWidth:I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isFirstSurfaceChanged:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mQualityLevel:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->Init_PhysicsEngine(IIII)V

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isFirstSurfaceChanged:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceCreated:Z

    if-eqz v0, :cond_5

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "First onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mQualityLevel:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->Init_PhysicsEngine(IIII)V

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceCreated:Z

    goto :goto_0

    :cond_5
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "2nd, 3rd..... onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onSurfaceChangedEvent(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isSurfaceCreated:Z

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isPrevSurfaceWidth:I

    iput v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_xpos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_ypos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isCleanup:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    if-ge v0, v6, :cond_1

    :cond_0
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCleanup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isCleanup:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDrawCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!!! return"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v7}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    packed-switch v10, :pswitch_data_0

    :cond_2
    :goto_0
    return v7

    :pswitch_0
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v4, "ACTION_DOWN"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onTouchEvent(III[I[I)V

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    iput-boolean v7, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v3, "ACTION_MOVE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    iget-object v4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_ypos:[I

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onTouchEvent(III[I[I)V

    iput-boolean v7, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    goto :goto_0

    :pswitch_2
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v4, "ACTION_UP"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    iget-object v8, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_xpos:[I

    iget-object v9, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_ypos:[I

    move v5, v1

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onTouchEvent(III[I[I)V

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public preSetBGTexture()V
    .locals 3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "preSetBGTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const-string v1, "PortraitBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const-string v1, "LandscapeBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->recycleBG()V

    return-void

    :cond_1
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mPortraitBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mLandscapeBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public preSetTexture()V
    .locals 3

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const-string v1, "DiamondPT"

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDiamondPT:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->recycleResource()V

    return-void
.end method

.method public preSetTiltTexture()V
    .locals 3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "preSetTiltTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitTiltBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const-string v1, "PortraitTiltBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitTiltBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeTiltBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    const-string v1, "LandscapeTiltBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeTiltBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->recycleTiltBG()V

    return-void

    :cond_1
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mPortraitBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mLandscapeBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public releaseBooster(I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedCPUClockTable:[I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    iput-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->supportedGPUFreqTable:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->clearEffect()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->calledScreenTurnedOn:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->calledScreenTurnedOn:Z

    return-void
.end method

.method public sendDragSoundFadeOutForTouchUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForUnlock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    :cond_0
    return-void
.end method

.method public sendDragSoundFadeOutForUnlock()V
    .locals 2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "SOUND RENDER UNLOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForUnlock:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSoudVolume:F

    goto :goto_0
.end method

.method public sendDragSoundInfo(Landroid/media/SoundPool;I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND sendDragSoundInfo dragSreamID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

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

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput p2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->dragSreamID:I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForUnlock:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isDragSoudStartForTouchUp:Z

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setParentWindowFocusState(Z)V
    .locals 3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParentWindowFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->setParentWindowFocusState(Z)V

    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDiamondPT:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTiltImage(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "setTiltImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mPortraitTiltBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mLandscapeTiltBG:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setValueOfDVFS(ZIZI)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    iput p2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->CPU_CLOCK_NUM:I

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    iput p4, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->GPU_FREQUNCY_NUM:I

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized settingsForImageType(ILandroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settingsForImageType, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "bg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->setTiltImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mTitlImageChangeCheckQueue:Ljava/util/Queue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isCleanup:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    if-nez v0, :cond_2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "== DVFS == new DVFSHandlerWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;-><init>(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    :cond_2
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->calledScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->calledScreenTurnedOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_xpos:[I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->pointer_ypos:[I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$3;-><init>(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public declared-synchronized unlockEffect()V
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDrawCount:I

    if-le v0, v1, :cond_1

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "synchronized unlockEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mUnLockEffectQueue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isTouched:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
