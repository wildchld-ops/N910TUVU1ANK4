.class public Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
.super Ljava/lang/Object;
.source "RippleInkRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
    }
.end annotation


# static fields
.field private static final INK_DISABLE:I = 0x0

.field private static final RIPPLE_LIGHT:I = 0x0

.field private static final RIPPLE_LIGHT_WITH_INK:I = 0x1

.field private static final UPDATE_TYPE_CHANGE_BACKGROUND:I = 0x1

.field private static final UPDATE_TYPE_USER_SWITCHING:I = 0x2

.field public static inkColorFromSettingForLCD:[[F

.field public static inkColorFromSettingForLED:[[F


# instance fields
.field private final ACQUIRE_DVFS:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private HOVER_EXPONENT_RATIO_MAX:F

.field private HOVER_EXPONENT_RATIO_MIN:F

.field private HOVER_FRESENL_MAX:F

.field private HOVER_FRESENL_MIN:F

.field private HOVER_INTENSITY_MAX:F

.field private HOVER_SPECULAR_RATIO_MAX:F

.field private HOVER_SPECULAR_RATIO_MIN:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final RELEASE_DVFS:I

.field private final RIPPLE_WAIT_TIME:J

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

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private heights:[F

.field private heightsSub1:[F

.field private heightsSub2:[F

.field private hoverPlus_Frenel:F

.field private hoverPlus_Specular:F

.field private hoverPlus_exponent:F

.field private indices:[S

.field private inkColorFromSetting:[[F

.field intensityForLandscape:F

.field intensityForPortrait:F

.field intensityForRipple:F

.field private isInkEnable:Z

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

.field private isUseLCD:Z

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

.field private mBitmapRatio:F

.field private mContext:Landroid/content/Context;

.field private mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field mEffectChangeCheckArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mExponentRatio:F

.field private mFresnelRatio:F

.field private mHoverEnabled:Z

.field private mHoverIntensity:F

.field private mInkEffectColor:I

.field private mLandscape:Z

.field mParent:Landroid/opengl/GLSurfaceView;

.field private mPhoneMode:I

.field private mPreviousRippleTime:J

.field private mReductionRate:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpecularRatio:F

.field private max:I

.field private mouseX:F

.field private mouseY:F

.field private preEffectType:I

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
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSettingForLCD:[[F

    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSettingForLED:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ecccccd
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f52d2d3
        0x3ef0f0f1
        0x3f0c8c8d
    .end array-data

    :array_2
    .array-data 4
        0x3f52d2d3
        0x3f0c8c8d
        0x3ea0a0a1
    .end array-data

    :array_3
    .array-data 4
        0x3eb4b4b5
        0x3f169697
        0x3e5cdcdd
    .end array-data

    :array_4
    .array-data 4
        0x3dc8c8c9
        0x3ea0a0a1
        0x3f39b9ba
    .end array-data

    :array_5
    .array-data 4
        0x3dc8c8c9
        0x3e5cdcdd
        0x3ec8c8c9
    .end array-data

    :array_6
    .array-data 4
        0x3ea0a0a1
        0x3e20a0a1
        0x3f20a0a1
    .end array-data

    :array_7
    .array-data 4
        0x3f028283
        0x3ebebebf
        0x3e5cdcdd
    .end array-data

    :array_8
    .array-data 4
        0x3da0a0a1
        0x3ec8c8c9
        0x3f0c8c8d
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3ecccccd
        0x3f800000
    .end array-data

    :array_a
    .array-data 4
        0x3f43c3b5
        0x3ef0f0e9
        0x3f0c8c82
    .end array-data

    :array_b
    .array-data 4
        0x3f3ebebe
        0x3edcdcca
        0x3df0f0e9
    .end array-data

    :array_c
    .array-data 4
        0x3e8c8c72
        0x3f028273
        0x3df0f0e9
    .end array-data

    :array_d
    .array-data 4
        0x3d209fe8
        0x3eaaaa9f
        0x3f7afaf8
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x3df0f0e9
        0x3eb4b4af
    .end array-data

    :array_f
    .array-data 4
        0x3eb4b4af
        0x3e70f0e9
        0x3f34b4af
    .end array-data

    :array_10
    .array-data 4
        0x3e5cdcca
        0x3dc8c8ac
        0x3d209fe8
    .end array-data

    :array_11
    .array-data 4
        0x3ea0a090
        0x3f20a090
        0x3f34b4af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;III)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/opengl/GLSurfaceView;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->DBG:Z

    const-string v0, "RippleInkRenderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TAG:Ljava/lang/String;

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->unitCellWidth:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->unitCellHeight:F

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->textures0:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->textures1:[I

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->view:[F

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->proj:[F

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->world:[F

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->REDUCTION_RATE_NORMAL:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MIN:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MAX:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    const v0, 0x3ccccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_INTENSITY_MAX:F

    const v0, 0x3c23d70a

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Frenel:F

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Specular:F

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_exponent:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_INTENSITY_MAX:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverIntensity:F

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPreviousRippleTime:J

    const-wide/16 v2, 0x640

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->RIPPLE_WAIT_TIME:J

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mReductionRate:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->refractiveIndex:F

    const v0, 0x3e051eb8

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reflectionRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio2:F

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForPortrait:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForLandscape:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForPortrait:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForLandscape:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForPortrait:F

    const/high16 v0, -0x3dd00000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForPortrait:F

    const/high16 v0, -0x3e480000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForLandscape:F

    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForLandscape:I

    iput v7, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForLandscape:I

    iput v7, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForPortrait:I

    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForPortrait:I

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForPortrait:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustPortrait:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustLandscape:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    const-wide v2, 0x4062c00000000000L

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDragThreshold:D

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevPressTime:J

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSystemSoundChecked:Z

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isUseLCD:Z

    move-object v0, v1

    check-cast v0, [[F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isShowCalled:Z

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOK_CONTROL:I

    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQ_CONTROL:I

    const v0, 0x88b8

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ACQUIRE_DVFS:I

    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->RELEASE_DVFS:I

    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    const-string v0, "RippleInkRenderer"

    const-string v1, "RippleInkRenderer Constructor 2014-0203"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iput p3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;FFFZ)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;Z)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->getBestMaxFreq([II)I

    move-result v0

    const-string v2, "RippleInkRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->getBestMaxFreq([II)I

    move-result v1

    const-string v2, "RippleInkRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->acquireBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->acquireBooster(I)V

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

.method private getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I

    const/4 v9, 0x0

    const-string v7, "RippleInkRenderer"

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

    const-string v7, "RippleInkRenderer"

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
    const-string v7, "RippleInkRenderer"

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

    const-string v0, "RippleInkRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->initWaters([F[SIIIII)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method private loadBGTexture()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RippleInkRenderer"

    const-string v1, "loadBGTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const-string v0, "RippleInkRenderer"

    const-string v1, "transferBitmap bitmapPortraitBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->transferPortraitBGBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onLoadPortraitBGTextures()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const-string v0, "RippleInkRenderer"

    const-string v1, "transferBitmap bitmapLandscapeBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->transferLandscapeBGBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onLoadLandscapeBGTextures()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "RippleInkRenderer"

    const-string v1, "bitmapPortraitBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "RippleInkRenderer"

    const-string v1, "bitmapLandscapeBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadEnvironmentTexture()V
    .locals 2

    const-string v0, "RippleInkRenderer"

    const-string v1, "loadEnvironmentTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "transferWaterBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->transferWaterBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onLoadWaterTextures()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const-string v0, "RippleInkRenderer"

    const-string v1, "bitmapEnvironmentBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadShaderSetting()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    invoke-static {v1, v2, v0}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onInitSetting(IIZ)V

    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onInitGPU()V

    return-void
.end method

.method private declared-synchronized move()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "RippleInkRenderer"

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

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForLandscape:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForLandscape:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v6, v1, v4

    :goto_0
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mReductionRate:F

    const/high16 v11, 0x3f000000

    invoke-static/range {v1 .. v11}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->move([F[FIIIIIIZFF)I

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRenderModeDirty()V

    :cond_3
    :goto_1
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v12, v1, :cond_1

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v14, v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v14

    add-int/2addr v1, v12

    mul-int/lit8 v13, v1, 0x3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    add-int/lit8 v1, v12, -0x7

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForPortrait:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForPortrait:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v6, v1, v4

    goto/16 :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRenderModeDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
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

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseBooster(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseBooster(I)V

    :cond_1
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private declared-synchronized ripple(FFFZ)V
    .locals 8
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    monitor-enter p0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPreviousRippleTime:J

    :cond_0
    const-string v0, "RippleInkRenderer"

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

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->ripple([FIIIIFFF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setHoverEnable(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MIN:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    goto :goto_0
.end method

.method private setRenderModeDirty()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const-string v0, "RippleInkRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private setRippleVersion(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "RippleInkRenderer"

    const-string v2, "setRippleVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInkEffectColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    if-eqz v1, :cond_2

    const-string v1, "RippleInkRenderer"

    const-string v2, "Def.MODE = ModeType.RIPPLE_LIGHT_WITH_INK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    :goto_1
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    if-eq v1, v2, :cond_1

    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preEffectType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_1
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v1, "RippleInkRenderer"

    const-string v2, "ModeType.RIPPLE_LIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized changeBackground(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I

    monitor-enter p0

    :try_start_0
    const-string v0, "RippleInkRenderer"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "bmp == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string v0, "RippleInkRenderer"

    const-string v1, "changeBackground by user switching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRippleVersion(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

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

.method public declared-synchronized checkBackground()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "Change opengl BG Texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->loadBGTexture()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

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

    const-string v0, "RippleInkRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isShowCalled:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    if-nez v0, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "Spen onTouch(ACTION UP) , because touch up wasn\'t maked by uper layer until cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    float-to-int v1, v1

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v3, v2}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onTouch(IIIF)V

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;-><init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clearAllEffect()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->clearRipple()V

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    if-ne v0, v2, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "clearInkValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->clearInkValue()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public clearRipple()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RippleInkRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method public destroyed()V
    .locals 2

    const-string v0, "RippleInkRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    :cond_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1    # Landroid/view/MotionEvent;

    const-string v8, "RippleInkRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event  action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", src = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    if-nez v8, :cond_0

    const-string v8, "RippleInkRenderer"

    const-string v9, "drawCount == 0 Touch Return"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    iget-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-eqz v8, :cond_a

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForLandscape:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForLandscape:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    :goto_1
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    float-to-double v8, v5

    const-wide/high16 v10, 0x3ff0000000000000L

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    const/high16 v5, 0x3f800000

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    :cond_2
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v5}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onTouch(IIIF)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevPressTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    const/high16 v11, 0x40800000

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    const/4 v6, 0x1

    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPreviousRippleTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x640

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    if-nez v8, :cond_5

    const-string v8, "RippleInkRenderer"

    const-string v9, "setHoverEnable true ======================="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    :cond_5
    iget-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Frenel:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Specular:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_exponent:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MAX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MAX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    :cond_6
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    :cond_7
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    :cond_8
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverIntensity:F

    const/4 v11, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    :cond_9
    :goto_4
    move v7, v6

    goto/16 :goto_0

    :cond_a
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForPortrait:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForPortrait:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    and-int/lit16 v8, v8, 0x4002

    const/16 v9, 0x4002

    if-ne v9, v9, :cond_3

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-static {v8, v9, v10, v5}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onTouch(IIIF)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_d

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    sub-float v1, v8, v9

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    sub-float v2, v8, v9

    float-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v2

    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v0, v8

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDragThreshold:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    const/high16 v11, 0x40400000

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevPressTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    iget-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    const-wide/16 v10, 0x258

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    const/high16 v11, 0x40800000

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_4

    const-string v8, "RippleInkRenderer"

    const-string v9, "========================= ACTION_HOVER_ENTER"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_9

    const-string v8, "RippleInkRenderer"

    const-string v9, "ACTION_HOVER_EXIT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RippleInkRenderer"

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 23
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RippleInkRenderer"

    const-string v2, "Change Effect Type and loadShaderSetting()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->loadShaderSetting()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->checkBackground()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFFZ)V

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_6

    :cond_1
    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    :cond_2
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->move()V

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    :cond_4
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFFZ)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    goto/16 :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # I
    .param p3    # I

    const-string v2, "RippleInkRenderer"

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

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    if-nez v2, :cond_0

    const-string v2, "RippleInkRenderer"

    const-string v3, "Because of ((isSurfaceCreated == false) && (mPhoneMode == PORTRAIT_MODE)), return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    const-string v2, "RippleInkRenderer"

    const-string v3, "Because of isPrevSurfaceWidth == width, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    if-nez v2, :cond_4

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->view:[F

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

    iget-object v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->proj:[F

    const/high16 v4, 0x42340000

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa0000

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->perspectiveM([FFFFF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForLandscape:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForLandscape:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->loadShaderSetting()V

    goto/16 :goto_0

    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForPortrait:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForPortrait:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLConfig;

    const-string v0, "RippleInkRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->loadEnvironmentTexture()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    return-void
.end method

.method public releaseBooster(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RippleInkRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->clearAllEffect()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "RippleInkRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "RippleInkRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    if-nez v0, :cond_1

    const-string v0, "RippleInkRenderer"

    const-string v1, "PORTRAIT_MODE, getCenterCropBitmap bitmapPortraitBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    goto :goto_0

    :cond_1
    const-string v0, "RippleInkRenderer"

    const-string v1, "TABLET_MODE, getCenterCropBitmap bitmapPortraitBG, bitmapLandscapeBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "RippleInkRenderer"

    const-string v1, "setResourcesBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

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

    const-string v1, "RippleInkRenderer"

    const-string v2, "setRippleConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iput p2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    iput p3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForLandscape:F

    iput p4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForPortrait:F

    iput p5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForPortrait:F

    iput p6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForLandscape:F

    iput p7, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForLandscape:I

    iput p8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForLandscape:I

    iput p9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForPortrait:I

    iput p10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForPortrait:I

    iput p11, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForLandscape:F

    iput p12, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForLandscape:F

    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForPortrait:F

    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForPortrait:F

    move/from16 v0, p15

    int-to-double v1, v0

    iput-wide v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDragThreshold:D

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->initWaters()V

    return-void
.end method

.method public setValueOfDVFS(ZIZI)V
    .locals 3
    .param p1    # Z
    .param p2    # I
    .param p3    # Z
    .param p4    # I

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    iput p2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    iput p4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setValueOfInk(Z)V
    .locals 3
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInkEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSettingForLED:[[F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRippleVersion(Z)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RippleInkRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRippleVersion(Z)V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isShowCalled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-nez v0, :cond_2

    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == new DVFSHandlerRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;-><init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    :cond_2
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "RippleInkRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-string v0, "RippleInkRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;-><init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "RippleInkRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
