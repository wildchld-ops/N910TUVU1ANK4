.class public Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    }
.end annotation


# static fields
.field private static mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;


# instance fields
.field private final ACQUIRE_DVFS:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private DISTANCE_MAX_OF_DRAG:I

.field private final EVENT_CLEAR:I

.field private final EVENT_DELETE_BACKGROUND:I

.field private final EVENT_DELETE_FBO:I

.field private final EVENT_RELOAD_BACKGROUND:I

.field private final EVENT_RELOAD_FBO:I

.field private final EVENT_UNLOCK:I

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private final RELEASE_DVFS:I

.field private final TAG:Ljava/lang/String;

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field private calledScreenTurnedOn:Z

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private isCleanup:Z

.field private isDraged:Z

.field isFirstSurfaceChanged:Z

.field private isOrientationChangCount:I

.field private isOrientationChanged:Z

.field isPreSetTextureCalled:Z

.field private isPrevSurfaceWidth:I

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isSurfaceChanged:Z

.field isSurfaceCreated:Z

.field logCount:I

.field mBgChangeCheckArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mClearEffectArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mCountOfDirtyMode:I

.field private mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mDrawCount:I

.field mLandscapeBG:Landroid/graphics/Bitmap;

.field private mMask1:Landroid/graphics/Bitmap;

.field private mMask2:Landroid/graphics/Bitmap;

.field private mMask3:Landroid/graphics/Bitmap;

.field private mNoise:Landroid/graphics/Bitmap;

.field mParent:Landroid/opengl/GLSurfaceView;

.field mPortraitBG:Landroid/graphics/Bitmap;

.field private mQualityLevel:I

.field private mTabletMode:I

.field private mTube:Landroid/graphics/Bitmap;

.field mUnLockEffectArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final pointer_xpos:[I

.field final pointer_ypos:[I

.field private prevPressTime:J

.field private prevTouchMoveX:I

.field private prevTouchMoveY:I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field windowHeight:I

.field windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ILcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;III)V
    .locals 6

    const/16 v1, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->DBG:Z

    const-string v0, "WaterColor_WaterColorRenderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowWidth:I

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowHeight:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveX:I

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveY:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->DISTANCE_MAX_OF_DRAG:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_CLEAR:I

    const/16 v0, 0x5b

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_UNLOCK:I

    const/16 v0, 0x5c

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_DELETE_BACKGROUND:I

    const/16 v0, 0x5e

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_RELOAD_BACKGROUND:I

    const/16 v0, 0x5d

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_DELETE_FBO:I

    const/16 v0, 0x5f

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_RELOAD_FBO:I

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPreSetTextureCalled:Z

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    iput v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    iput v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOK_CONTROL:I

    iput v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQ_CONTROL:I

    const v0, 0x88b8

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->ACQUIRE_DVFS:I

    iput v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->RELEASE_DVFS:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "WaterColorRender Constructor 2014-08-21, onSurfaceChanged edited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    sput-object p4, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    iput p3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    iput p5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Init_PhysicsEngineJNI()V

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    iput p6, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowWidth:I

    iput p7, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowHeight:I

    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    return v0
.end method

.method static synthetic access$400()Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->getBestMaxFreq([II)I

    move-result v0

    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->getBestMaxFreq([II)I

    move-result v1

    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->acquireBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->acquireBooster(I)V

    :cond_1
    return-void
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

    const-string v7, "WaterColor_WaterColorRenderer"

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

    const-string v7, "WaterColor_WaterColorRenderer"

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
    const-string v7, "WaterColor_WaterColorRenderer"

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

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private recycleResource()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask1:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask2:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask3:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTube:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTube:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTube:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private releaseCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseBooster(I)V

    :cond_1
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

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
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public changeNoiseTexture()V
    .locals 4

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "changeNoiseTexture()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Noise"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mNoise:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public declared-synchronized checkBackground()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "Change opengl BG Texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->preSetBGTexture()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
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

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;-><init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public clearWaterColor()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    if-le v0, v2, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "clearWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public destroyed()V
    .locals 2

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->checkBackground()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "onDrawFrame, mJniWaterColor.onKeyEvent(EVENT_CLEAR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onKeyEvent(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "onDrawFrame, mJniWaterColor.onKeyEvent(EVENT_UNLOCK)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onKeyEvent(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_7

    :cond_2
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    :cond_3
    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    if-ge v0, v5, :cond_8

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPreSetTextureCalled:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->preSetTexture()V

    :cond_4
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Draw_PhysicsEngine()V

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    :goto_3
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->isEmpty()I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mJniWaterColor is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    if-lt v0, v5, :cond_6

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "Drity Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iput v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_4
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    return-void

    :cond_7
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Draw_PhysicsEngine()V

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_6

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mJniWaterColor is not Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    goto :goto_4
.end method

.method public onKeyEvent(I)V
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onKeyEvent(I)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

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

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    iput v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    if-ne v0, p2, :cond_3

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "isPrevSurfaceWidth == width"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Init_PhysicsEngine(IIII)V

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    if-eqz v0, :cond_5

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "First onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Init_PhysicsEngine(IIII)V

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    goto :goto_0

    :cond_5
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "2nd, 3rd..... onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPreSetTextureCalled:Z

    if-nez v0, :cond_6

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "isPreSetTextureCalled == false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->preSetTexture()V

    :goto_1
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onSurfaceChangedEvent(II)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iput v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    goto :goto_0

    :cond_6
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "changeNoiseTexture()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->changeNoiseTexture()V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPreSetTextureCalled:Z

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    aput v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    aput v5, v2, v3

    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    :cond_0
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCleanup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDrawCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!!! return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    :goto_0
    return v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v15, v14

    goto :goto_0

    :pswitch_1
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_DOWN"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    const/4 v14, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveY:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v2, :cond_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveX:I

    sub-int/2addr v2, v5

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveY:I

    sub-int/2addr v2, v5

    int-to-float v13, v2

    float-to-double v5, v12

    const-wide/high16 v16, 0x4000000000000000L

    move-wide/from16 v0, v16

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v5, v5, v16

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v11, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->DISTANCE_MAX_OF_DRAG:I

    if-le v11, v2, :cond_4

    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "distanceForDragSound = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    :cond_4
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_1

    :pswitch_3
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_UP"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    move-wide/from16 v16, v0

    sub-long v9, v5, v16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    if-nez v2, :cond_2

    const-wide/16 v5, 0x258

    cmp-long v2, v9, v5

    if-lez v2, :cond_2

    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "LONG PRESS UP"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    const/4 v14, 0x1

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_HOVER_ENTER"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_1

    :pswitch_5
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_HOVER_MOVE"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_1

    :pswitch_6
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_HOVER_EXIT"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchEventForPatternLock(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEventForPatternLock action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    :cond_0
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCleanup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDrawCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!!! return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_DOWN => ACTION_HOVER_ENTER"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    iput-boolean v9, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_MOVE => ACTION_HOVER_MOVE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_UP"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v9, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    sub-long v7, v3, v9

    const-wide/16 v3, 0x258

    cmp-long v0, v7, v3

    if-lez v0, :cond_1

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "LONG PRESS, ACTION_UP => ACTION_HOVER_EXIT"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public preSetBGTexture()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "preSetBGTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "PortraitBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "LandscapeBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->recycleBG()V

    return-void

    :cond_1
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mPortraitBG is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mLandscapeBG is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public preSetTexture()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "preSetTexture()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPreSetTextureCalled:Z

    if-ne v0, v4, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "isPreSetTextureCalled == true!!! return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Mask1"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Mask2"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Mask3"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Tube"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTube:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Noise"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mNoise:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPreSetTextureCalled:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->recycleResource()V

    goto :goto_0
.end method

.method public releaseBooster(I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->removeDefaultRunnable()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->clearWaterColor()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mLandscapeBG:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask1:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask3:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTube:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mNoise:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setValueOfDVFS(ZIZI)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    iput p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    iput p4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->removeDefaultRunnable()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-nez v0, :cond_2

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == new DVFSHandlerWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;-><init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    :cond_2
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;-><init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public unlockEffect()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I

    if-le v0, v2, :cond_1

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "unlockWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
