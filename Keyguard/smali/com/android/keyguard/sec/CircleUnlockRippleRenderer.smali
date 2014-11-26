.class public Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# instance fields
.field private CurrentState:I

.field private final DBG:Z

.field private final GRAVITY_EFFECT_LEFT:I

.field private final GRAVITY_EFFECT_RIGHT:I

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HOVER_EXPONENT_RATIO_MAX:F

.field private HOVER_EXPONENT_RATIO_MIN:F

.field private HOVER_FRESENL_MAX:F

.field private HOVER_FRESENL_MIN:F

.field private HOVER_INTENSITY_MAX:F

.field private HOVER_SPECULAR_RATIO_MAX:F

.field private HOVER_SPECULAR_RATIO_MIN:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MarkcuasticsTMix:F

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final REDUCTION_RATE_RAIN:F

.field private final REDUCTION_RATE_WAVE:F

.field private final REDUCTION_RATE_WAVE2:F

.field RIPPLE_DRAG_THRESHOLD:D

.field private final RIPPLE_WAIT_TIME:J

.field ReferencePoint:F

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_GRAVITY:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_EXPONENT:F

.field private final TOUCH_FRESENL:F

.field private final TOUCH_SPECULAR:F

.field TexMoveU:F

.field TiltStartU:F

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field private animationSpeed:F

.field bGravityDirection:Z

.field bitmapBG:Landroid/graphics/Bitmap;

.field bitmapCaustics:Landroid/graphics/Bitmap;

.field bitmapCaustics2:Landroid/graphics/Bitmap;

.field bitmapGravity:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private calledIsScreenTurnedOn:Z

.field causticsTimeMix:F

.field causticsTimeRatio:F

.field causticsTimeRatio2:F

.field private defaultX:F

.field private defaultY:F

.field private diffPressTime:J

.field private downX:F

.field private downY:F

.field private drawCount:I

.field fWaterBrightness:F

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private hasSystemNavBar:Z

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

.field private isFirstTouched:Z

.field private isInkEnable:Z

.field private isMakedASpenToucdUp:Z

.field private isSystemSoundChecked:Z

.field isTouched:Z

.field private isUseLCD:Z

.field private is_JBP_Upgrade:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field leftDirectionTilt:F

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

.field private mBottomWaveReductionRate:F

.field private mBottomWaveVelocity:F

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mEnableArcMotion:Z

.field private mExponentRatio:F

.field private mFresnelRatio:F

.field private mGravityHeightWeight:F

.field private mHoverEnabled:Z

.field private mHoverIntensity:F

.field private mInkEffectColor:I

.field private mLandscape:Z

.field private mLightHeight:F

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mPreviousRippleTime:J

.field private mRDownId:I

.field private mRUpId:I

.field private mReductionRate:F

.field private mReductionRateSub:F

.field mRunDirectionAni:Z

.field private final mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectEffect:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPool_Gravity:Landroid/media/SoundPool;

.field private mSpecularRatio:F

.field private mSubWaveTime:J

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F

.field private mWallpaperPath:Ljava/lang/String;

.field private mWaveEnable:Z

.field private mWaveVelocity:F

.field private max:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private prevWidth_sufaceChanged:I

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field rightDirectionTilt:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field private sounds_gravity:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field textures0:[I

.field textures1:[I

.field tmx:F

.field tmy:F

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

.field private wv:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;

    const/high16 v9, 0x3f800000

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->DBG:Z

    const-string v2, "CircleUnlockRippleRenderer"

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unitCellWidth:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unitCellHeight:F

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    new-array v2, v6, [S

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->textures0:[I

    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->textures1:[I

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWaveVelocity:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWaveEnable:Z

    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_NORMAL:F

    const v2, 0x3f75c28f

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_RAIN:F

    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_WAVE:F

    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_WAVE2:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_FRESENL:F

    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_SPECULAR:F

    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_EXPONENT:F

    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    const/high16 v2, 0x41200000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    const v2, 0x3ccccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    const v2, 0x3c23d70a

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Frenel:F

    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Specular:F

    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_exponent:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    const-wide/16 v4, 0x640

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_WAIT_TIME:J

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    const v2, 0x3f7d70a4

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRateSub:F

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSubWaveTime:J

    const/high16 v2, 0x3fc00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLightHeight:F

    const v2, 0x3f6e147b

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    const v2, 0x3e051eb8

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    const/high16 v2, 0x42200000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    const/high16 v2, -0x3dd00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const/high16 v2, -0x3e480000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v2, 0x42340000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v2, 0x41c80000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v2, 0x41c80000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v2, 0x42380000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    const-wide v4, 0x4062c00000000000L

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iget-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_GRAVITY:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->moveCount:I

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    move-object v2, v3

    check-cast v2, [[F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/16 v2, 0x2f0

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    const/16 v2, 0x2d0

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->GRAVITY_EFFECT_LEFT:I

    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->GRAVITY_EFFECT_RIGHT:I

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mEnableArcMotion:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v2, 0x3d8f5c29

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    const v2, 0x3e99999a

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    const/high16 v2, 0x40400000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    new-instance v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRippleInkEffectEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_JBP_Upgrade = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInkEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUseLCD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLCD:[[F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->initWaters()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound_gravity()V

    return-void

    :cond_0
    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLED:[[F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;FFFZ)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    return v0
.end method

.method private checkSound()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private initWaters()V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/keyguard/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method private loadBitmapIfBitmapNull()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapWater == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapBG == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapGravity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapCaustics == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    :cond_5
    return-void
.end method

.method private move()V
    .locals 14

    const/4 v13, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters don\'t called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    :goto_0
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    iget v10, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    invoke-static/range {v0 .. v10}, Lcom/android/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v11

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    iget v10, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    const v12, 0x3f333333

    mul-float/2addr v10, v12

    invoke-static/range {v0 .. v10}, Lcom/android/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v0

    move v12, v11

    move v11, v0

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    const/high16 v10, 0x3f000000

    invoke-static/range {v0 .. v10}, Lcom/android/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_7

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    :cond_4
    :goto_2
    move v0, v13

    :goto_3
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v1, :cond_1

    move v1, v13

    :goto_4
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v1, v2, :cond_a

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v6, v1, 0x2

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v6, v1, 0x2

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    sget-object v3, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v4, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x2

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v2, 0x2

    aget v4, v3, v2

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v2

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_6
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v3, v0, -0x7

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x6

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x7

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x2

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x6

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x6

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x7

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v2, 0x2

    aget v4, v3, v2

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x6

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v2

    goto/16 :goto_5

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_b
    move v11, v8

    move v12, v8

    goto/16 :goto_1
.end method

.method private perspectiveM([FFFFF)V
    .locals 7

    const/4 v6, 0x0

    const-wide/high16 v0, 0x3fe0000000000000L

    const-wide v2, 0x400921fb54442d18L

    float-to-double v4, p2

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p4, p5

    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    const/4 v2, 0x1

    aput v6, p1, v2

    const/4 v2, 0x2

    aput v6, p1, v2

    const/4 v2, 0x3

    aput v6, p1, v2

    const/4 v2, 0x4

    aput v6, p1, v2

    const/4 v2, 0x5

    aput v0, p1, v2

    const/4 v0, 0x6

    aput v6, p1, v0

    const/4 v0, 0x7

    aput v6, p1, v0

    const/16 v0, 0x8

    aput v6, p1, v0

    const/16 v0, 0x9

    aput v6, p1, v0

    const/16 v0, 0xa

    div-float v2, p5, v1

    aput v2, p1, v0

    const/16 v0, 0xb

    const/high16 v2, -0x40800000

    aput v2, p1, v0

    const/16 v0, 0xc

    aput v6, p1, v0

    const/16 v0, 0xd

    aput v6, p1, v0

    const/16 v0, 0xe

    mul-float v2, p4, p5

    div-float v1, v2, v1

    aput v1, p1, v0

    const/16 v0, 0xf

    aput v6, p1, v0

    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .param p1    # I

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    new-instance v7, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;I)V

    invoke-virtual {v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1    # I

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private playSound_gravity(I)V
    .locals 7
    .param p1    # I

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private ripple(FFFZ)V
    .locals 8

    if-eqz p4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

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

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/keyguard/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    return-void
.end method

.method private setBackground(Z)V
    .locals 5

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    const-string v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getScaledBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->showMultiWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSim Device wallpaperPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    :goto_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-nez v0, :cond_c

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "pBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020040

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setGravityTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_7
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v1, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v1, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v1, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pBitmap.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pBitmap.height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private setFalseDefaultEffectFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    return-void
.end method

.method private setHoverEnable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    goto :goto_0
.end method

.method private setModeleConfiguration()V
    .locals 7

    const/16 v6, 0x15

    const/16 v5, 0x68

    const/4 v4, 0x3

    const/16 v3, 0x32

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_2

    :cond_1
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    return-void

    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_5

    :cond_4
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_9

    :cond_7
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_8

    const v0, -0x3ddacccd

    :goto_1
    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e388937

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x42400000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41d80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_0

    :cond_8
    const v0, -0x3dd3cccd

    goto :goto_1

    :cond_9
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_b

    :cond_a
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_c

    :cond_b
    const/16 v0, 0x4a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    const/16 v0, 0x4a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41e00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    goto/16 :goto_0

    :cond_c
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_0
.end method

.method private setRenderModeDirty()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setRippleVersion()V
    .locals 3

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRippleInkEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInkEffectColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    if-eqz v0, :cond_1

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Def.MODE = ModeType.RIPPLE_LIGHT_WITH_INK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isArcMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ModeType.RIPPLE_GRAVITY_LIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_1

    :cond_2
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ModeType.RIPPLE_LIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_1
.end method

.method private setSound()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "KeyguardUpdateMonitor hasBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    :cond_0
    return-void
.end method

.method private setSound_gravity()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show mSoundPool_Gravity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "KeyguardUpdateMonitor hasBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const v3, 0x7f05000c

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    :cond_0
    return-void
.end method

.method private transferBitmapToJni(Z)V
    .locals 3

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBitmapToJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBGBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->transferBGBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferWaterBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->transferWaterBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->transferGravityBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public EffectDisable()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unbindLeftDirectionEffect()V

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unbindRightDirectionEffect()V

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public EffectEnable(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound_gravity()V

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playSound_gravity(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bindLeftDirectionEffect()V

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bindRightDirectionEffect()V

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindLeftDirectionEffect()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    iput-boolean v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeLeftDirectionStartRipple()V

    return-void
.end method

.method public bindRightDirectionEffect()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeRightDirectionStartRipple()V

    return-void
.end method

.method public cleanUp()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    if-nez v0, :cond_3

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Spen onTouch(ACTION UP) , because touch up wasn\'t maked by uper layer until cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v3, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$4;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_4
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, p0}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    :cond_5
    return-void
.end method

.method public clearAllEffect()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->clearRipple()V

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearInkValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clear gravity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->clearGravityEffect()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    :cond_2
    return-void
.end method

.method public clearGravityEffect()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public clearRipple()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method public getInterpolation70(F)F
    .locals 13
    .param p1    # F

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000

    div-float v0, p1, v11

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    array-length v1, v6

    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    aget-object v3, v6, v4

    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    return v5
.end method

.method public getInterpolation80(F)F
    .locals 13
    .param p1    # F

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000

    div-float v0, p1, v11

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    array-length v1, v6

    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    aget-object v3, v6, v4

    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    return v5
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const-wide/high16 v9, 0x4000000000000000L

    const/4 v6, 0x2

    const/high16 v5, 0x40000000

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event  action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%x"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "drawCount == 0 Touch Return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    if-eqz v0, :cond_1

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "isFirstTouched is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v0, v7

    :goto_1
    if-ne v0, v8, :cond_3

    move v0, v8

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    const v1, 0x3e99999a

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    move v0, v8

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    const v1, 0x3f333333

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    move v0, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v8, :cond_4

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    move v0, v7

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    if-le v0, v8, :cond_5

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    :cond_5
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    :goto_2
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_9

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_7

    const/high16 v0, 0x3f800000

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_14

    :cond_8
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v2, v2

    invoke-static {v1, v2, v8, v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    :cond_9
    :goto_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_a

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "MotionEvent.ACTION_DOWN mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "KeyguardUpdateMonitor hasBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v8

    :cond_a
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40800000

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    :cond_b
    :goto_4
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_12

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "========================= ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x640

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-nez v0, :cond_e

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setHoverEnable true ======================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Frenel:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Specular:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_exponent:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    :cond_f
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    :cond_10
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    :cond_11
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    :cond_12
    :goto_5
    move v0, v7

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x4002

    const/16 v2, 0x4002

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    iput-boolean v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_16

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float/2addr v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40400000

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v4, 0x14

    const/high16 v6, 0x40400000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    goto/16 :goto_4

    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_17

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    iput-boolean v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    iget-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40800000

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    goto/16 :goto_4

    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    iput-boolean v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    goto/16 :goto_4

    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadWaterTextures()V

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "Change opengl BG Texture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onFreeBGTextures()V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    move/from16 v29, v0

    invoke-static/range {v1 .. v29}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDrawGravity([F[F[SIII[FIIIIFFFFFFFFFFIFFFFFZF)V

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-lez v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->move()V

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    :cond_5
    return-void

    :cond_6
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateGravityRippleEffect()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateBGTiltAnimation()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateCausticsMixRatio()V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_2

    :cond_9
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    move/from16 v29, v0

    invoke-static/range {v1 .. v29}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDrawGravity([F[F[SIII[FIIIIFFFFFFFFFFIFFFFFZF)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_2
.end method

.method public onMakeLeftDirectionEndRipple()V
    .locals 8

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    move v1, v2

    :goto_1
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int v5, v0, v2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    sget-object v5, Lcom/android/keyguard/sec/Value$SideWave;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    const v6, 0x3a83126f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onMakeLeftDirectionStartRipple()V
    .locals 9

    const v8, 0x3fd9999a

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave1;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    :goto_2
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_3
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave2;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    return-void
.end method

.method public onMakeRightDirectionEndRipple()V
    .locals 8

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v1, v3, 0x2

    :goto_0
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    add-int v4, v1, v0

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$SideWave;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    const v6, 0x3c23d70a

    mul-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v3, Landroid/opengl/GLSurfaceView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onMakeRightDirectionStartRipple()V
    .locals 9

    const v8, 0x3fd9999a

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave1;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    :goto_2
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_3
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave2;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    return-void
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 10
    .param p1    # Landroid/hardware/scontext/SContextEvent;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "master_motion"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v2, v5

    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "arc_motion_ripple_effect"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v3, v5

    :goto_1
    if-eqz v2, :cond_0

    if-nez v3, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    const-string v7, "CircleUnlockRippleRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isKeyguardHidden() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardHidden()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardHidden()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    iget-object v4, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_0

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getBounceLongMotionContext()Landroid/hardware/scontext/SContextBounceLongMotion;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextBounceLongMotion;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v5, "CircleUnlockRippleRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BOUNCE_LONG_NONE type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    const-string v6, "CircleUnlockRippleRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOUNCE_LONG_RIGHT type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->EffectEnable(I)V

    goto/16 :goto_2

    :pswitch_2
    const-string v5, "CircleUnlockRippleRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOUNCE_LONG_LEFT type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->EffectEnable(I)V

    goto/16 :goto_2

    :pswitch_3
    const-string v5, "CircleUnlockRippleRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BOUNCE_LONG_UNHAND type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->EffectDisable()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 12

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width = "

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

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    if-ne v0, p2, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevWidth_sufaceChanged is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    if-le p2, p3, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    if-ne p3, v0, :cond_6

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    div-float v11, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v2, 0x42340000

    const v4, 0x3dcccccd

    const/high16 v5, 0x43fa0000

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move v6, v0

    move v7, v1

    move v8, v2

    :goto_3
    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, v8, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    const v2, 0x3f83d70a

    const v3, 0x3f83d70a

    const v4, 0x3f83d70a

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPUGravity()V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadGravityTextures()V

    :cond_3
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPUGravity()V

    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadGravityTextures()V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    goto/16 :goto_1

    :cond_6
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move v6, v0

    move v7, v1

    move v8, v2

    goto/16 :goto_3
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->loadBitmapIfBitmapNull()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->clearAllEffect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, p0}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "register SContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setGravityTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    :cond_1
    iput-object p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    :cond_2
    iput-object p3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRippleBackground()V
    .locals 2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSoundRID(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    iput p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapBG.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitmapBG.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound_gravity()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->checkSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledIsScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F
    .param p4    # J
    .param p6    # F

    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    iput p3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F
    .param p4    # J
    .param p6    # F

    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    iput p3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unbindLeftDirectionEffect()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    const v0, 0x3f6a3d71

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeLeftDirectionEndRipple()V

    return-void
.end method

.method public unbindRightDirectionEffect()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iput-boolean v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    const v0, 0x3f6a3d71

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeRightDirectionEndRipple()V

    return-void
.end method

.method public updateBGTiltAnimation()V
    .locals 10

    const/4 v9, 0x1

    const v8, 0x3f83d70a

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const v2, 0x3e99999a

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const/high16 v3, 0x41a00000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-ne v0, v9, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const/high16 v3, 0x41700000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v2, 0x3e99999a

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    neg-float v2, v2

    const/high16 v3, 0x41a00000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    neg-float v2, v2

    const/high16 v3, 0x41700000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_3
    return-void
.end method

.method public updateCausticsMixRatio()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const v0, -0x43dc28f6

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const v0, 0x3c23d70a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    float-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    float-to-double v0, v0

    const-wide v2, -0x4046666666666666L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    goto :goto_0
.end method

.method public updateGravityRippleEffect()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateRightDirectionAnimation()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateLeftDirectionAnimation()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateLeftDirectionAnimation()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000

    const v4, 0x3c23d70a

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v1, 0x3ecccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    const/high16 v1, 0x42480000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x38d1b717

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation80(F)F

    move-result v0

    mul-float/2addr v0, v4

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3f7ae148

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    :goto_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3fb33333

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    :cond_4
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    :cond_5
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x3b449ba6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation70(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3f75c28f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3c75c28f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    :cond_8
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3ba3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    :cond_9
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3ca3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto/16 :goto_0

    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    goto/16 :goto_0
.end method

.method public updateRightDirectionAnimation()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000

    const v4, 0x3c23d70a

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const v1, 0x3ecccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    const/high16 v1, 0x42480000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x38d1b717

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation80(F)F

    move-result v0

    mul-float/2addr v0, v4

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    :goto_1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3fb33333

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    :cond_4
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    :cond_5
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x3b449ba6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation70(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3f75c28f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3c75c28f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    :cond_8
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3ba3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    :cond_9
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3ca3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto/16 :goto_0

    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    goto/16 :goto_0
.end method
