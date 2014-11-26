.class public Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;
.super Ljava/lang/Object;
.source "IndigoDiffusionRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;
    }
.end annotation


# static fields
.field private static final RIPPLE_LIGHT_WITH_INK:I = 0x1


# instance fields
.field private final ACQUIRE_DVFS:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final RELEASE_DVFS:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field private TOUCH_EXPONENT:F

.field private TOUCH_FRESENL:F

.field private TOUCH_SPECULAR:F

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapEnvironmentBG:Landroid/graphics/Bitmap;

.field bitmapLandscapeBG:Landroid/graphics/Bitmap;

.field bitmapPortraitBG:Landroid/graphics/Bitmap;

.field private calledScreenTurnedOn:Z

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private defaultX:F

.field private defaultY:F

.field private diffPressTime:J

.field private downX:F

.field private downY:F

.field private drawCount:I

.field private effectType:I

.field private fpsCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private heights:[F

.field private heightsSub1:[F

.field private heightsSub2:[F

.field private indices:[S

.field private inkColorFromSetting:[F

.field intensityForLandscape:F

.field intensityForPortrait:F

.field intensityForRipple:F

.field private isFpsChecked:Z

.field private isMakedASpenToucdUp:Z

.field private isOrientationChangCount:I

.field private isOrientationChanged:Z

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isShowCalled:Z

.field private isSurfaceChanged:Z

.field private isSurfaceCreated:Z

.field private isSystemSoundChecked:Z

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

.field private mBitmapRatio:F

.field private mContext:Landroid/content/Context;

.field private mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mExponentRatio:F

.field private mFresnelRatio:F

.field private mLandscape:Z

.field mParent:Landroid/opengl/GLSurfaceView;

.field private mPhoneMode:I

.field private mReductionRate:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpecularRatio:F

.field private max:I

.field private mouseX:F

.field private mouseY:F

.field pressure:F

.field private prevPressTime:J

.field private prevSurfaceWidth:I

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field private startTime:J

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field textures0:[I

.field textures1:[I

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field private velocity:[F

.field private velocitySub1:[F

.field private velocitySub2:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;III)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/opengl/GLSurfaceView;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/16 v1, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->DBG:Z

    const-string v0, "IndigoDiffusionRenderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_WIDTH:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_HEIGHT:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_WIDTH:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_HEIGHT:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->VCOUNT:I

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->unitCellWidth:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->unitCellHeight:F

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub1:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub2:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->vertices:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->indices:[S

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->textures0:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->textures1:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->view:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->proj:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->world:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->wvp:[F

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->REDUCTION_RATE_NORMAL:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBitmapRatio:F

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TOUCH_FRESENL:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TOUCH_SPECULAR:F

    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TOUCH_EXPONENT:F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mFresnelRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mSpecularRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mExponentRatio:F

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mReductionRate:F

    const v0, 0x3f6e147b

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->refractiveIndex:F

    const v0, 0x3e051eb8

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->reflectionRatio:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->alphaRatio1:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->alphaRatio2:F

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForPortrait:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateXForLandscape:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateXForPortrait:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateYForLandscape:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateYForPortrait:F

    const/high16 v0, -0x3dd00000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateZForPortrait:F

    const/high16 v0, -0x3e480000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateZForLandscape:F

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanXForLandscape:I

    iput v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanYForLandscape:I

    iput v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanXForPortrait:I

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanYForPortrait:I

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForPortrait:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioAdjustPortrait:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioAdjustLandscape:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForRipple:F

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downX:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downY:F

    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDragThreshold:D

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDistance:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->diffPressTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->prevPressTime:J

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSystemSoundChecked:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isMakedASpenToucdUp:Z

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultX:F

    iput v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultY:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isShowCalled:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChangCount:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceChanged:Z

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceCreated:Z

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->prevSurfaceWidth:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->CPU_CLOCK_NUM:I

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->GPU_FREQUNCY_NUM:I

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->CPU_CLOK_CONTROL:I

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->GPU_FREQ_CONTROL:I

    const v0, 0x88b8

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->ACQUIRE_DVFS:I

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->RELEASE_DVFS:I

    iput-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->effectType:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->pressure:F

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isFpsChecked:Z

    iput v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->fpsCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->startTime:J

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "IndigoDiffusionRenderer Constructor 2014-0821"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iput p3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultX:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;FFF)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;
    .param p1    # F
    .param p2    # F
    .param p3    # F

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->ripple(FFF)V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->getBestMaxFreq([II)I

    move-result v0

    const-string v2, "IndigoDiffusionRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->getBestMaxFreq([II)I

    move-result v1

    const-string v2, "IndigoDiffusionRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->acquireBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->acquireBooster(I)V

    :cond_1
    return-void
.end method

.method private checkFPS()V
    .locals 7

    iget-boolean v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isFpsChecked:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->fpsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->fpsCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->startTime:J

    sub-long v0, v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->startTime:J

    const-string v4, "IndigoDiffusionRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FPS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->fpsCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->fpsCount:I

    :cond_0
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

.method private getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I

    const/4 v9, 0x0

    const-string v7, "IndigoDiffusionRenderer"

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

    const-string v7, "IndigoDiffusionRenderer"

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
    const-string v7, "IndigoDiffusionRenderer"

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

.method private initWaters()V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->vertices:[F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->indices:[S

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub1:[F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub2:[F

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->vertices:[F

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->indices:[S

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->VCOUNT:I

    iget v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->initWaters([F[SIIIII)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method private declared-synchronized loadBGTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "loadBGTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "transferBitmap bitmapPortraitBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->transferPortraitBGBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onLoadPortraitBGTextures()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "transferBitmap bitmapLandscapeBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->transferLandscapeBGBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onLoadLandscapeBGTextures()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "bitmapPortraitBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "bitmapLandscapeBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private loadEnvironmentTexture()V
    .locals 2

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "loadEnvironmentTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "transferWaterBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->transferWaterBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onLoadWaterTextures()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "bitmapEnvironmentBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized move()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub1:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub2:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "IndigoDiffusionRenderer"

    const-string v2, "initWaters don\'t called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v4, 0x1

    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanXForLandscape:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanYForLandscape:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v6, v1, v4

    :goto_0
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mReductionRate:F

    const/high16 v11, 0x3f000000

    invoke-static/range {v1 .. v11}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->move([F[FIIIIIIZFF)I

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->setRenderModeDirty()V

    :cond_3
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v12, v1, :cond_1

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v14, v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v14

    add-int/2addr v1, v12

    mul-int/lit8 v13, v1, 0x3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    add-int/lit8 v1, v12, -0x7

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanXForPortrait:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanYForPortrait:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v6, v1, v4

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .param p1    # [F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    const/4 v8, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v1, p4, p5

    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    const/4 v2, 0x1

    aput v8, p1, v2

    const/4 v2, 0x2

    aput v8, p1, v2

    const/4 v2, 0x3

    aput v8, p1, v2

    const/4 v2, 0x4

    aput v8, p1, v2

    const/4 v2, 0x5

    aput v0, p1, v2

    const/4 v2, 0x6

    aput v8, p1, v2

    const/4 v2, 0x7

    aput v8, p1, v2

    const/16 v2, 0x8

    aput v8, p1, v2

    const/16 v2, 0x9

    aput v8, p1, v2

    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    const/16 v2, 0xb

    const/high16 v3, -0x40800000

    aput v3, p1, v2

    const/16 v2, 0xc

    aput v8, p1, v2

    const/16 v2, 0xd

    aput v8, p1, v2

    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    const/16 v2, 0xf

    aput v8, p1, v2

    return-void
.end method

.method private releaseCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->releaseBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->releaseBooster(I)V

    :cond_1
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private declared-synchronized ripple(FFF)V
    .locals 8
    .param p1    # F
    .param p2    # F
    .param p3    # F

    monitor-enter p0

    :try_start_0
    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ripple(), mx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->ripple([FIIIIFFF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

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

.method private setRenderModeDirty()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    monitor-enter p0

    :try_start_0
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "bmp == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public changeColor(III)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/high16 v3, 0x437f0000

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public checkBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "Change opengl BG Texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->loadBGTexture()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->removeDefaultRunnable()V

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isShowCalled:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isMakedASpenToucdUp:Z

    if-nez v0, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "Spen onTouch(ACTION UP) , because touch up wasn\'t maked by uper layer until cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    float-to-int v1, v1

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onTouch(IIIF)V

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isMakedASpenToucdUp:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$1;-><init>(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clearAllEffect()V
    .locals 2

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "clearAllEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->clearRipple()V

    invoke-static {}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->clearInkValue()V

    return-void
.end method

.method public clearRipple()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method public destroyed()V
    .locals 2

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    :cond_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;

    const-string v5, "IndigoDiffusionRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event  action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", src = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    if-nez v5, :cond_0

    const-string v5, "IndigoDiffusionRenderer"

    const-string v6, "drawCount == 0 Touch Return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    iget-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForLandscape:F

    iget v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    neg-float v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForLandscape:F

    iget v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downX:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downY:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->prevPressTime:J

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->diffPressTime:J

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForRipple:F

    const/high16 v8, 0x40800000

    mul-float/2addr v7, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->ripple(FFF)V

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    iget v8, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->pressure:F

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onTouch(IIIF)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isMakedASpenToucdUp:Z

    const/4 v3, 0x1

    :cond_1
    :goto_2
    move v4, v3

    goto/16 :goto_0

    :cond_2
    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForPortrait:F

    iget v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    neg-float v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForPortrait:F

    iget v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downX:F

    sub-float v1, v5, v6

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downY:F

    sub-float v2, v5, v6

    float-to-double v5, v1

    const-wide/high16 v7, 0x4000000000000000L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, v2

    const-wide/high16 v9, 0x4000000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDistance:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDistance:I

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downX:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->downY:F

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDistance:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDragThreshold:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDistance:I

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForRipple:F

    const/high16 v8, 0x40400000

    mul-float/2addr v7, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->ripple(FFF)V

    const/4 v3, 0x1

    :cond_4
    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    iget v8, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->pressure:F

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onTouch(IIIF)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->prevPressTime:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->diffPressTime:J

    iget-wide v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->diffPressTime:J

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget v7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForRipple:F

    const/high16 v8, 0x40800000

    mul-float/2addr v7, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->ripple(FFF)V

    const/4 v3, 0x1

    :cond_6
    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    float-to-int v6, v6

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->pressure:F

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onTouch(IIIF)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    iget v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mouseY:F

    float-to-int v6, v6

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->pressure:F

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onTouch(IIIF)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_2
.end method

.method public loadShaderSetting()V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onInitSetting(IIZZ)V

    invoke-static {}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onInitGPU()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChangCount:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 23
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->checkBackground()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mExponentRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFFZ)V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceChanged:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChangCount:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_5

    :cond_0
    const-string v1, "IndigoDiffusionRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChangCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    :cond_1
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceChanged:Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->move()V

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->checkFPS()V

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->inkColorFromSetting:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mExponentRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFFZ)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChangCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChangCount:I

    goto/16 :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # I
    .param p3    # I

    const-string v2, "IndigoDiffusionRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceCreated:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    if-nez v2, :cond_0

    const-string v2, "IndigoDiffusionRenderer"

    const-string v3, "Because of ((isSurfaceCreated == false) && (mPhoneMode == PORTRAIT_MODE)), return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceCreated:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->prevSurfaceWidth:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    const-string v2, "IndigoDiffusionRenderer"

    const-string v3, "Because of isPrevSurfaceWidth == width, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->prevSurfaceWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    if-nez v2, :cond_4

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->proj:[F

    const/high16 v4, 0x42340000

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa0000

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->perspectiveM([FFFFF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBitmapRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateXForLandscape:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateYForLandscape:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->loadShaderSetting()V

    goto/16 :goto_0

    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBitmapRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateXForPortrait:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateYForPortrait:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLConfig;

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->loadEnvironmentTexture()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isSurfaceCreated:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->prevSurfaceWidth:I

    return-void
.end method

.method public releaseBooster(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iput-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedCPUClockTable:[I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    iput-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->supportedGPUFreqTable:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->clearAllEffect()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isTouched:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->removeDefaultRunnable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mPhoneMode:I

    if-nez v0, :cond_1

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "PORTRAIT_MODE, getCenterCropBitmap bitmapPortraitBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mBitmapRatio:F

    goto :goto_0

    :cond_1
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "TABLET_MODE, getCenterCropBitmap bitmapPortraitBG, bitmapLandscapeBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "setResourcesBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRippleConfiguration(IIFFFFIIIIFFFFI)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # I
    .param p8    # I
    .param p9    # I
    .param p10    # I
    .param p11    # F
    .param p12    # F
    .param p13    # F
    .param p14    # F
    .param p15    # I

    const-string v1, "IndigoDiffusionRenderer"

    const-string v2, "setRippleConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    iput p2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    iput p3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForLandscape:F

    iput p4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForPortrait:F

    iput p5, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateZForPortrait:F

    iput p6, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->translateZForLandscape:F

    iput p7, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanXForLandscape:I

    iput p8, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanYForLandscape:I

    iput p9, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanXForPortrait:I

    iput p10, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->spanYForPortrait:I

    iput p11, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForLandscape:F

    iput p12, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForLandscape:F

    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForPortrait:F

    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForPortrait:F

    move/from16 v0, p15

    int-to-double v1, v0

    iput-wide v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->rippleDragThreshold:D

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->VCOUNT:I

    iget v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->max:I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->initWaters()V

    return-void
.end method

.method public setValueOfDVFS(ZIZI)V
    .locals 3
    .param p1    # Z
    .param p2    # I
    .param p3    # Z
    .param p4    # I

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    iput p2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->CPU_CLOCK_NUM:I

    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    iput p4, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->GPU_FREQUNCY_NUM:I

    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show()V
    .locals 3

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isShowCalled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    if-nez v0, :cond_2

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "== DVFS == new DVFSHandlerRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;-><init>(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDVFSHandlerIndigoDiffusion:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$DVFSHandlerForIndigoDiffusion;

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    :cond_2
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;-><init>(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
