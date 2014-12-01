.class public Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    }
.end annotation


# static fields
.field private static final AppVersion:Ljava/lang/String; = "360Panorama AppVer.1.0.2 2013/10/01"

.field public static final BOUNDARY_APS_FOR_CALC_OFFSET:D

.field public static final BOUNDARY_APS_FOR_EXTRA_TIME:D

.field public static CENTER_GUIDE_ANIMATION_PHASE1:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE2:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE3:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE4:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE5:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS1:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS2:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS3:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "TwGLPanorama360Menu"

.field private static final MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

.field private static final MORPHO_HELP_TEXT_ALIGN_POS_X:F

.field private static final MORPHO_HELP_TEXT_ALIGN_POS_Y:F

.field private static final MORPHO_HELP_TEXT_ALIGN_SIZE:F

.field private static final MORPHO_HELP_TEXT_ALIGN_WIDTH:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_SIZE:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

.field private static final MORPHO_ROTATE_GUIDE_HEIGHT:F

.field private static final MORPHO_ROTATE_GUIDE_POS_X:F

.field private static final MORPHO_ROTATE_GUIDE_POS_Y:F

.field private static final MORPHO_ROTATE_GUIDE_WIDTH:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_POS_X:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_SIZE:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

.field public static final OUTPUT_TYPE_BOUNDING:I = 0x0

.field public static final OUTPUT_TYPE_CLIPPING:I = 0x1

.field public static final REQUIRED_STORAGE_SIZE:J = 0x1400000L

.field public static final SENSOR_CORRECTION_EXTRA_TIME:I = 0x3e8

.field public static final SENSOR_CORRECTION_TIME_BEFORE_HAND:I = 0x2710

.field public static final SENSOR_CORRECTION_TIME_EVERYTIME:I = 0xbb8

.field public static final SF_MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:I = 0x3

.field public static final SF_MODE_USE_ALL_SENSORS:I = 0x0

.field public static final SF_MODE_USE_GYROSCOPE:I = 0x1

.field public static final SF_MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:I = 0x4

.field public static final SF_MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:I = 0x2

.field public static final SF_MODE_USE_GYROSCOPE_WITH_ACCELEROMETER_EX:I = 0x6

.field public static final SF_MODE_USE_ROTATION_VECTOR:I = 0x5

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I


# instance fields
.field private contextActivity:Lcom/sec/android/app/camera/Camera;

.field private imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mAllGuideTaken:Z

.field private mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mEmptyPreviewSyncObj:Ljava/lang/Object;

.field private mGuideDialogVisibility:Z

.field private mGuideType:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

.field private mImageClassifyResult:D

.field private mInFinishShootingAsync:Z

.field private mIsEnoughSpace:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

.field private mNeedToRestart:Z

.field private mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

.field protected mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRootView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

.field private mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

.field private mSaveStorage:I

.field private mSceneStr:Ljava/lang/String;

.field private mShootingNum:I

.field private mStartingPanorama360Time:J

.field private mStopUpdate:Z

.field private mUndoButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x7f0a0006

    const/high16 v2, 0x40000000

    const/16 v0, 0x280

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    const/16 v0, 0x49c

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    const/16 v0, 0x71c

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE3:I

    const/16 v0, 0x938

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    const/16 v0, 0xbb8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE5:I

    const/16 v0, 0x2aaa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS1:I

    const/16 v0, 0x5555

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS2:I

    const v0, 0x8000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS3:I

    const-wide/high16 v0, 0x4014000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_EXTRA_TIME:D

    const-wide/high16 v0, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_CALC_OFFSET:D

    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_X:I

    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_Y:I

    const v0, 0x7f0a02f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    const v0, 0x7f0a02f7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_X:F

    const v0, 0x7f0a02f8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    const v0, 0x7f0a02fa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_SIZE:F

    const v0, 0x7f0a02ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    const v0, 0x7f0a0300

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

    const v0, 0x7f0a0301

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    const v0, 0x7f0a0303

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_SIZE:F

    const v0, 0x7f0a0304

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    const v0, 0x7f0a0305

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_X:F

    const v0, 0x7f0a0306

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    const v0, 0x7f0a0308

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_SIZE:F

    const v0, 0x7f0a02fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    const v0, 0x7f0a02fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_HEIGHT:F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_X:F

    const v0, 0x7f0a02fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;

    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->setCaptureEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->setTouchHandled(Z)V

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn TwGLPanorama360Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202a1

    const v5, 0x7f0202a2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->initUndoButton()V

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c024b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0a02f9

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f0a0006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0a02f9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a0007

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c024c

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0a0302

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f0a0006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0a0302

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a0007

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0a0307

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f0a0006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0a0307

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a0007

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    const v0, 0x7f020449

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    const v0, 0x7f02044a

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v9

    int-to-float v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getBaseIndicatorRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    return v0
.end method

.method static synthetic access$3508(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showNotEnoughSpaceMsg()V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;D)D
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I

    return v0
.end method

.method static synthetic access$6302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I

    return p1
.end method

.method static synthetic access$6400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    return p1
.end method

.method static synthetic access$7000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    return-object v0
.end method

.method private checkAvailableStorage()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v1

    const-wide/32 v3, 0x1400000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available storage size is not enough. -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;
    .locals 12

    const v11, 0x7f0a02fe

    const v10, 0x7f0a0006

    const/4 v6, 0x1

    const/high16 v9, 0x40000000

    const v8, 0x7f0a0007

    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn createRotateGuideImage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_HEIGHT:F

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    const/4 v1, 0x2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    const/4 v1, 0x3

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    return-object v0
.end method

.method public static getRequiredStorageSize()J
    .locals 2

    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method private initUndoButton()V
    .locals 14

    const/4 v7, 0x0

    const/4 v13, 0x1

    const/4 v6, 0x0

    const v0, 0x7f0b005d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v11, v0

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0c024e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000

    add-float v4, v0, v1

    const v0, 0x7f0a0309

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    const/4 v12, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0a030a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v2, v4

    const v3, 0x7f0a030b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v2, v7

    move v3, v7

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f090006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v10, v11, v1, v13}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const-string v1, "Undo"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0a030c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const v2, 0x7f0a030d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    const v2, 0x7f0a030e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    const v3, 0x7f0a030f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    const v2, 0x7f0a0310

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const v3, 0x7f0a0311

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    return-void
.end method

.method private showNotEnoughSpaceMsg()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showMediaStorageDialog()V

    return-void
.end method

.method private showVersion()V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->getVersion()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getVersion()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v0, "360Panorama AppVer.1.0.2 2013/10/01"

    const-string v3, "TwGLPanorama360Menu"

    const-string v4, "360Panorama AppVer.1.0.2 2013/10/01"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwGLPanorama360Menu"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwGLPanorama360Menu"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "engVersion is null"

    goto :goto_0

    :cond_1
    const-string v2, "sfusionVersion is null"

    goto :goto_1
.end method


# virtual methods
.method public LeavePanorama360(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v2, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mn LeavePanorama360 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    invoke-interface {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;->onPanorama360CaptureCancelled()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v2, v7, v6, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    if-ne p1, v7, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-result-object v2

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iput-object v5, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->clear()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    :cond_7
    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public hideBaseIndicator()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideUndoButton()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "Test"

    const-string v1, "hideUndoButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showBaseIndicator()V

    return-void
.end method

.method public isCalibrationLastPhase()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE5:I

    if-gt v1, v2, :cond_0

    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn Panorama360 is waiting on last phase state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " waitTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama360Capturing()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    if-lez v0, :cond_0

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn Panorama360 is capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama360Saving()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-ne v1, v0, :cond_0

    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn Panorama360 is saving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mnSensorCalculationCompleted()Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn mnSensorCalculationCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcSensorCalculationCompleted()V

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBaseMenu()V

    goto :goto_0
.end method

.method public mnSetOnPanorama360CaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    return-void
.end method

.method public onAutoFocusCompleted()Z
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onAutoFocusCompleted()Z

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onAutoFocusCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 3

    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn onBack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcOnBackProc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_2

    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mActivityContext is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method protected onHide()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-eq v0, v5, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationEnable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn onKeyDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn onKeyUp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v1, v0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x3

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1002(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/16 v1, 0x1388

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    return-void
.end method

.method protected onShow()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mn onShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-eq v0, v5, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPrepareShooting(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z

    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "onShow PANORAMA_STATE_UNINITIALIZED call mPanorama360Callback.pcPanoramaInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaInitialize()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "onShow PANORAMA_STATE_UNINITIALIZED back from mPanorama360Callback.pcPanoramaInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    goto :goto_1
.end method

.method public onStartingPreviewCompleted()Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStartingPreviewCompleted()Z

    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mn onStartingPreviewCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->isPanorama360Saving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManagerPanorama360()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x5

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->isPanorama360Saving()Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBaseMenu()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    :cond_2
    return-void
.end method

.method public setGuideDialogVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    return-void
.end method

.method public showBaseIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showUndoButton()V
    .locals 2

    const-string v0, "Test"

    const-string v1, "showUndoButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideBaseIndicator()V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    return-void
.end method
