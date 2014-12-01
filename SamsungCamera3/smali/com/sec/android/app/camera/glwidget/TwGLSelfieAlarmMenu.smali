.class public Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSelfieAlarmMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$ScannerClient;,
        Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;
    }
.end annotation


# static fields
.field private static BESTFACE_MAX_IMAGE_COUNT:I = 0x0

.field private static BEST_MAX_IMAGE_COUNT:I = 0x0

.field private static BURST_MAX_IMAGE_COUNT:I = 0x0

.field private static final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

.field private static final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

.field private static final CAPTURE_PROGRESSBAR_STEP_GAP:I

.field private static final CAPTURE_PROGRESSBAR_STEP_WIDTH:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_SIZE:F

.field private static final DEFAULT_BURST_MAX_IMAGE_COUNT:I = 0x14

.field private static final DEFAULT_SELFIE_GUIDE_MOVING_THRESHOLD:F = 5.0f

.field private static final FONT_SIZE:I

.field private static GIFMAKER_MAX_IMAGE_COUNT:I = 0x0

.field private static final HELP_TEXT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERTICAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:F

.field private static MAGIC_MAX_IMAGE_COUNT:I = 0x0

.field private static MAX_FACE_COUNT:I = 0x0

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MOVING:I = 0x2

.field private static final NONE:I = 0x0

.field protected static final POST_PROGRESS_DURATION:I = 0x64

.field protected static final POST_PROGRESS_UPDATE:I = 0x2

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final RESIZING:I = 0x1

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SELFIE_FRAME_MARGIN:I

.field private static final SELFIE_GUIDE_HEIGHT:F

.field private static final SELFIE_GUIDE_HEIGHT_MAX:I = 0x3

.field private static final SELFIE_GUIDE_HEIGHT_MIN:I = 0x1

.field private static final SELFIE_GUIDE_POS_LANDSCAPE_X:F

.field private static final SELFIE_GUIDE_POS_PORTRAIT_X:F

.field private static final SELFIE_GUIDE_POS_Y:F

.field private static final SELFIE_GUIDE_WIDTH:F

.field private static final SELFIE_GUIDE_WIDTH_MAX:I = 0x2

.field private static final SELFIE_GUIDE_WIDTH_MIN:I = 0x0

.field private static SMARTSELFIE_MAX_IMAGE_COUNT:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLSelfieAlarmMenu"

.field private static final TOUCH_AF_BOTTOM_BOUNDARY:I

.field private static final TOUCH_AF_BOUNDARY:I

.field private static final TOUCH_VERTEX_AREA_BOUNDARY:I

.field private static final TOUCH_VERTEX_LB:I = 0x2

.field private static final TOUCH_VERTEX_LT:I = 0x1

.field private static final TOUCH_VERTEX_NON:I = 0x0

.field private static final TOUCH_VERTEX_PRESS_BOUNDARY:I

.field private static final TOUCH_VERTEX_RB:I = 0x4

.field private static final TOUCH_VERTEX_RT:I = 0x3

.field private static mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$ScannerClient;


# instance fields
.field private final RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

.field private mAmountDeltaX:F

.field private mAmountDeltaY:F

.field private final mBurstMsgHandler:Landroid/os/Handler;

.field private mCaptureCount:I

.field private mCapturedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionRect:Landroid/graphics/Rect;

.field private mIsBurstCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;

.field private mMaxStep:I

.field private mMovePoint:Landroid/graphics/PointF;

.field private mNeedToResizeGuide:Z

.field private mOrientation:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mProgressBarHeight:I

.field private mProgressBarWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedSelfieGuide:I

.field private mSelfieAlarmMode:Z

.field private mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

.field private mSelfieGuideMode:I

.field private mStoreCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v5, 0x7f0a0044

    const v4, 0x7f0a0007

    const v3, 0x7f0a0006

    const/high16 v2, 0x40000000

    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BEST_MAX_IMAGE_COUNT:I

    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SMARTSELFIE_MAX_IMAGE_COUNT:I

    const-string v0, "30"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BURST_MAX_IMAGE_COUNT:I

    const/16 v0, 0x20

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->MAGIC_MAX_IMAGE_COUNT:I

    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->MAX_FACE_COUNT:I

    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->GIFMAKER_MAX_IMAGE_COUNT:I

    const v0, 0x7f0a02aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    const v0, 0x7f0a02ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    const v0, 0x7f0a02ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    const v0, 0x7f0a02ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    const v0, 0x7f0a02ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    const v0, 0x7f0a02af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    const v0, 0x7f0b004f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_TEXT_SIZE:F

    const v0, 0x7f0a0079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_WIDTH:F

    const v0, 0x7f0a007b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_HEIGHT:F

    const v0, 0x7f0a007c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    const v0, 0x7f0a007d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_SIDE_MARGIN:F

    const v0, 0x7f0a0081

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_POS_X:F

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_POS_Y:F

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->HELP_TEXT_SIZE:F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SCREEN_WIDTH:I

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    const v0, 0x7f0a0043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    const v0, 0x7f0a0045

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    const v0, 0x7f0a0046

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOTTOM_BOUNDARY:I

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_FRAME_MARGIN:I

    const v0, 0x7f0a0040

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    const v0, 0x7f0a0041

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_POS_LANDSCAPE_X:F

    const v0, 0x7f0a003e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_POS_PORTRAIT_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_POS_Y:F

    const v0, 0x7f0b002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mOrientation:I

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMovePoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCapturedFileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mProgressBarWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mProgressBarHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mScreenWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mScreenHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieAlarmMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mNeedToResizeGuide:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->setCaptureEnabled(Z)V

    const/16 v0, 0x19

    if-eq p5, v0, :cond_0

    const/16 v0, 0x22

    if-ne p5, v0, :cond_1

    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mScreenWidth:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mScreenHeight:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mProgressBarWidth:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mProgressBarHeight:I

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_POS_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_HEIGHT:F

    const v6, 0x7f02005e

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->init()V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$ScannerClient;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$ScannerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$ScannerClient;

    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "TwGLBurstMenu"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;

    return-void

    :cond_1
    const/16 v0, 0x18

    if-ne p5, v0, :cond_2

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BEST_MAX_IMAGE_COUNT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x2e

    if-ne p5, v0, :cond_3

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->MAGIC_MAX_IMAGE_COUNT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x38

    if-ne p5, v0, :cond_4

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SMARTSELFIE_MAX_IMAGE_COUNT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x3a

    if-ne p5, v0, :cond_5

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->GIFMAKER_MAX_IMAGE_COUNT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BURST_MAX_IMAGE_COUNT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x7f02005e
        0x7f020061
        0x7f020060
        0x7f020063
        0x7f020062
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkShotROIState([II)I
    .locals 6

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v5, p1, v0

    if-ne v5, v1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_3

    aget v1, p1, v0

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_5

    aget v1, p1, v0

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_7

    aget v1, p1, v0

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F
    .locals 3

    const v2, 0x3f666666

    const v1, 0x3ecccccd

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    :cond_0
    return-void
.end method

.method private resetFaceDetectionRect()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmGuideStateChanged(IZ)V

    :cond_1
    return-void
.end method

.method private declared-synchronized resizeSelfieGuide(IFFFF)V
    .locals 8

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_2

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v3

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_3

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v2

    :cond_1
    :goto_2
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v0

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_6

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float p2, v4, v3

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_7

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v2, v4

    :cond_5
    :goto_4
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    add-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FFZ)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_4

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v1

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_5

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v0, v4

    goto :goto_4

    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_a

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v3, v4

    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_b

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v2

    :cond_9
    :goto_6
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FFZ)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_8

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v1, v4

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_9

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v0

    goto :goto_6

    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_e

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v3, v4

    :cond_c
    :goto_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_f

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v2, v4

    :cond_d
    :goto_8
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    add-float/2addr v4, p2

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    add-float/2addr v4, p3

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_c

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v1, v4

    goto :goto_7

    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_d

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    sub-float p3, v0, v4

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSelectedSelfieGuide(FF)V
    .locals 10

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentBottom()F

    move-result v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setImage(IFFZ)V

    :cond_0
    return-void

    :cond_1
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpg-float v4, v4, p1

    if-gez v4, :cond_2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v4, p2

    if-gez v4, :cond_2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, p2

    if-lez v4, :cond_2

    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v4, p1

    if-gez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, p2

    if-lez v4, :cond_3

    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    goto/16 :goto_0

    :cond_3
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpg-float v4, v4, p1

    if-gez v4, :cond_4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpg-float v4, v4, p2

    if-gez v4, :cond_4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_AREA_BOUNDARY:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_VERTEX_PRESS_BOUNDARY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, p2

    if-lez v4, :cond_4

    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    goto/16 :goto_0

    :cond_4
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    goto/16 :goto_0
.end method


# virtual methods
.method public SelfieProgressLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->hideSelfieGuideFrame()V

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public clearBurstProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    :cond_1
    return-void
.end method

.method public deNormalize(FI)F
    .locals 2

    const/high16 v0, 0x447a0000

    add-float/2addr v0, p1

    const/high16 v1, 0x44fa0000

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I

    return v0
.end method

.method public getSelfieGuideFrame()Lcom/sec/android/glview/TwGLNinePatch;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    return-object v0
.end method

.method public getStoreCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->hideSelfieGuideFrame()V

    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    :cond_0
    return-void
.end method

.method public hideSelfieGuideFrame()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmGuideStateChanged(IZ)V

    :cond_1
    return-void
.end method

.method public isBurstCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mIsBurstCapturing:Z

    return v0
.end method

.method public isNeedInternalStorage()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelfieAlarmFDDetecting()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfieAlarmMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieAlarmMode:Z

    return v0
.end method

.method public needToArrangeSelfieAlarmGuideRect()V
    .locals 2

    const-string v0, "TwGLSelfieAlarmMenu"

    const-string v1, "needToArrangeSelfieAlarmGuideRect..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->reset()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->showCaptureLayout()V

    return-void
.end method

.method public onBack()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 10

    const/4 v9, 0x0

    const-string v5, "TwGLSelfieAlarmMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCameraSettingsChanged menuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " modeid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x38

    if-ne v5, v6, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v5, v4, v1

    if-gez v5, :cond_2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    sub-float v5, v1, v5

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    move v4, v1

    const/4 v3, 0x1

    :cond_2
    cmpl-float v5, v4, v0

    if-lez v5, :cond_3

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    sub-float v5, v0, v5

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    move v4, v0

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5, v4, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6, v9}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->setCurrentGuideFramePosition()V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    invoke-virtual {v5, v6, v9}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->setCurrentGuideFramePosition()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->hideSelfieGuideFrame()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->hideCaptureLayout()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mOrientation:I

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TwGLSelfieAlarmMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->isBurstCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onBurstCaptureCancelled()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->onHide()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->reset()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->resetPostCaptureProgress()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmGuideStateChanged(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopSelfieAlarmGuideStateSound()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->showCaptureLayout()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mNeedToResizeGuide:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->reset()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->showCaptureLayout()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TwGLSelfieAlarmMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->stopCancelTimer()V

    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v8, 0x3

    const/high16 v4, 0x40a00000

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v7

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->setSelectedSelfieGuide(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-eqz v0, :cond_2

    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    invoke-virtual {v6, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    :cond_2
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMovePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMovePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v3, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    const/4 v2, 0x0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentTop()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    const/4 v3, 0x0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentBottom()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOTTOM_BOUNDARY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    const/4 v3, 0x0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    if-ne v0, v7, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-eq v7, v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-ne v5, v0, :cond_b

    :cond_a
    const/4 v2, 0x0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-eq v8, v0, :cond_c

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-ne v0, v1, :cond_d

    :cond_c
    const/4 v2, 0x0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentTop()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOUNDARY:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-eq v7, v0, :cond_e

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-ne v8, v0, :cond_f

    :cond_e
    const/4 v3, 0x0

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentBottom()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->TOUCH_AF_BOTTOM_BOUNDARY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-eq v5, v0, :cond_10

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    if-ne v0, v1, :cond_11

    :cond_10
    const/4 v3, 0x0

    :cond_11
    const-string v0, "TwGLSelfieAlarmMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SelfShot][BONG]onTouch ACTION_MOVE / RESIZING: mSelectedSelfieGuide : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", DeltaX : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", DeltaY : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->resizeSelfieGuide(IFFFF)V

    goto/16 :goto_2

    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    if-ne v1, v7, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    aget v4, v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    add-float/2addr v8, v9

    invoke-virtual {v1, v4, v5, v8, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setImage(IFFZ)V

    :cond_12
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->setCurrentGuideFramePosition()V

    goto/16 :goto_1

    :cond_13
    const-string v1, "TwGLSelfieAlarmMenu"

    const-string v4, "[SelfShot]view is not self shot frame view"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TwGLSelfieAlarmMenu"

    const-string v1, "Burstshot restart"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mIsBurstCapturing:Z

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->stopCancelTimer()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mNeedToResizeGuide:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCapturedFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCapturedFileList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmGuideStateChanged(IZ)V

    :cond_1
    return-void
.end method

.method public resetPostCaptureProgress()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    :cond_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x18

    if-ne v0, v1, :cond_4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BEST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto :goto_1

    :cond_4
    const/16 v1, 0x38

    if-ne v0, v1, :cond_5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SMARTSELFIE_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->MAGIC_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto :goto_1

    :cond_6
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_7

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->GIFMAKER_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto :goto_1

    :cond_7
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->BURST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mMaxStep:I

    goto :goto_1
.end method

.method public resetSelfieGuideFrame()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideMode:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelectedSelfieGuide:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaY:F

    :cond_0
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    const-string v0, "TwGLSelfieAlarmMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->startCancelTimer()V

    return-void
.end method

.method public declared-synchronized selfieAlarmFDRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 16

    monitor-enter p0

    const/16 v14, 0xa

    :try_start_0
    new-array v12, v14, [I

    const/4 v13, 0x0

    if-eqz p1, :cond_d

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->isSelfieAlarmFDDetecting()Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->getWindowFocused()Z

    move-result v14

    if-eqz v14, :cond_d

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v11, v14, :cond_c

    aget-object v14, p1, v11

    iget-object v14, v14, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v14, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->deNormalize(FI)F

    move-result v14

    iput v14, v8, Landroid/graphics/RectF;->left:F

    iget v14, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->deNormalize(FI)F

    move-result v14

    iput v14, v8, Landroid/graphics/RectF;->right:F

    iget v14, v8, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->deNormalize(FI)F

    move-result v14

    iput v14, v8, Landroid/graphics/RectF;->top:F

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->deNormalize(FI)F

    move-result v14

    iput v14, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-eqz v14, :cond_0

    iget v14, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v8, Landroid/graphics/RectF;->left:F

    iget v14, v8, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v8, Landroid/graphics/RectF;->top:F

    iget v14, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v8, Landroid/graphics/RectF;->right:F

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v8, Landroid/graphics/RectF;->bottom:F

    :cond_0
    iget v14, v8, Landroid/graphics/RectF;->left:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_1

    iget v14, v8, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-lez v14, :cond_2

    :cond_1
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->resetFaceDetectionRect()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v15, 0x1

    invoke-virtual {v14, v13, v15}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmGuideStateChanged(IZ)V

    const-string v14, "TwGLSelfieAlarmMenu"

    const-string v15, "selfieAlarmFDRectChanged resetFaceDetectionRect return"

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v14

    const v15, 0x3e4ccccd

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000

    div-float v10, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v14

    const v15, 0x3e4ccccd

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000

    div-float v9, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v14

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_FRAME_MARGIN:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    sub-float v5, v14, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v14

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_FRAME_MARGIN:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    add-float v6, v14, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentTop()F

    move-result v14

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_FRAME_MARGIN:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    sub-float v7, v14, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentBottom()F

    move-result v14

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_FRAME_MARGIN:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    add-float v4, v14, v9

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SCREEN_HEIGHT:I

    int-to-float v14, v14

    const v15, 0x3f4ccccd

    mul-float/2addr v14, v15

    cmpl-float v14, v4, v14

    if-ltz v14, :cond_4

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SCREEN_HEIGHT:I

    int-to-float v14, v14

    const v15, 0x3f4ccccd

    mul-float v4, v14, v15

    :cond_4
    const/high16 v3, 0x40a00000

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v14, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v5, v14

    if-gtz v14, :cond_5

    iget v14, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v14, v6, v14

    if-ltz v14, :cond_5

    iget v14, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v7, v14

    if-gtz v14, :cond_5

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v4, v14

    if-ltz v14, :cond_5

    const/4 v14, 0x4

    aput v14, v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v8, Landroid/graphics/RectF;->left:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v8, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v8, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    cmpg-float v14, v5, v1

    if-gtz v14, :cond_6

    cmpl-float v14, v6, v1

    if-ltz v14, :cond_6

    cmpg-float v14, v7, v2

    if-gtz v14, :cond_6

    cmpl-float v14, v4, v2

    if-ltz v14, :cond_6

    const/4 v14, 0x3

    aput v14, v12, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_6
    :try_start_2
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000

    div-float/2addr v14, v15

    sub-float v14, v5, v14

    add-float/2addr v14, v3

    cmpg-float v14, v14, v1

    if-gtz v14, :cond_7

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000

    div-float/2addr v14, v15

    add-float/2addr v14, v6

    sub-float/2addr v14, v3

    cmpl-float v14, v14, v1

    if-ltz v14, :cond_7

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000

    div-float/2addr v14, v15

    sub-float v14, v7, v14

    add-float/2addr v14, v3

    cmpg-float v14, v14, v2

    if-gtz v14, :cond_7

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000

    div-float/2addr v14, v15

    add-float/2addr v14, v4

    sub-float/2addr v14, v3

    cmpl-float v14, v14, v2

    if-ltz v14, :cond_7

    const/4 v14, 0x2

    aput v14, v12, v11

    goto :goto_2

    :cond_7
    iget v14, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v3

    cmpl-float v14, v5, v14

    if-gtz v14, :cond_8

    add-float v14, v6, v3

    iget v15, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v14, v15

    if-ltz v14, :cond_8

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v3

    cmpl-float v14, v7, v14

    if-gtz v14, :cond_8

    add-float v14, v4, v3

    iget v15, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    :cond_8
    const/4 v14, 0x0

    aput v14, v12, v11

    goto/16 :goto_2

    :cond_9
    iget v14, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v3

    cmpg-float v14, v5, v14

    if-lez v14, :cond_a

    iget v14, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v3

    cmpg-float v14, v6, v14

    if-lez v14, :cond_a

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v3

    cmpg-float v14, v7, v14

    if-lez v14, :cond_a

    iget v14, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v3

    cmpg-float v14, v4, v14

    if-gtz v14, :cond_b

    :cond_a
    const/4 v14, 0x1

    aput v14, v12, v11

    goto/16 :goto_2

    :cond_b
    const-string v14, "TwGLSelfieAlarmMenu"

    const-string v15, "Boundary line check error"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->checkShotROIState([II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmGuideStateChanged(IZ)V

    goto/16 :goto_1

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->resetFaceDetectionRect()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v15, 0x1

    invoke-virtual {v14, v13, v15}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmGuideStateChanged(IZ)V

    const-string v14, "TwGLSelfieAlarmMenu"

    const-string v15, "selfieAlarmFDRectChanged resetFaceDetectionRect"

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public setBurstCapturing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mIsBurstCapturing:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->setTouchHandled(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentGuideFramePosition()V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "TwGLSelfieAlarmMenu"

    const-string v4, "setCurrentGuideFramePosition obj is null. so return..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentBottom()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v0

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    int-to-float v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public setNeedToResize(Z)V
    .locals 3

    const-string v0, "TwGLSelfieAlarmMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedToResize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mNeedToResizeGuide:Z

    return-void
.end method

.method public setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;

    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3

    const-string v0, "TwGLSelfieAlarmMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    :cond_0
    return-void
.end method

.method public setSelfieAlarmMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieAlarmMode:Z

    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->showSelfieGuideFrame()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->hidePostCaptureLayout()V

    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieAlarmMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->hideCaptureLayout()V

    return-void
.end method

.method public showSelfieGuideFrame()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->SELFIE_GUIDE_WIDTH:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mAmountDeltaX:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mSelfieGuideFrame:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "TwGLSelfieAlarmMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
