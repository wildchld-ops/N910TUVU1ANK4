.class public Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLBurstPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final CAPTURETRI_HEIGHT:F

.field private static final CAPTURETRI_WIDTH:F

.field private static final GUIDE_HELP_TEXT_HEIGHT:F

.field private static final GUIDE_HELP_TEXT_POS_X:F

.field private static final GUIDE_HELP_TEXT_POS_Y:F

.field private static final GUIDE_HELP_TEXT_SIZE:F

.field private static final GUIDE_HELP_TEXT_WIDTH:F

.field private static final GUIDE_TEXT_HEIGHT:F

.field private static final GUIDE_TEXT_MARGIN:F

.field private static final GUIDE_TEXT_PORTRAIT_MARGIN:F

.field private static final GUIDE_TEXT_SIZE:F

.field private static final GUIDE_TEXT_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_X:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_X:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_Y:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_X:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_Y:F = 0.0f

.field private static final INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_X:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_Y:F = 0.0f

.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private static final LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_X:F

.field private static final LIVEPREVIEW_LANDSCAPE_Y:F

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 60.0f

.field private static final LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_X:F

.field private static final LIVEPREVIEW_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_RECT_THICKNESS:F

.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_X:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_SINGLE_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_X:F

.field private static final LIVEPREVIEW_SINGLE_Y:F

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_MOVESLOWLY:I = 0x5

.field private static final PANORAMASHOT_RECT_HEIGHT:F

.field private static final PANORAMASHOT_RECT_WIDTH:F

.field private static final PANORAMASHOT_TRI_HEIGHT_WIDTH:F

.field private static final PANORAMASHOT_TRI_POS_X:[F

.field private static final PANORAMASHOT_TRI_POS_Y:[F

.field private static final PANORAMASHOT_TRI_WIDTH:F

.field private static final PANORAMASHOT_TRI_WIDTH_HEIGHT:F

.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x190

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static SCREEN_HEIGHT:I = 0x0

.field private static final SCREEN_RATIO:F

.field protected static SCREEN_WIDTH:I = 0x0

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLBurstPanoramaMenu"

.field private static final WARNING_ARROW_OFFSET:F

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static WARNING_DISTANCE_HORIZONTAL:I

.field private static WARNING_DISTANCE_VERTICAL:I

.field private static WARNING_LEVEL_HIGH:I

.field private static WARNING_LEVEL_LOW:I

.field private static WARNING_LEVEL_NONE:I

.field private static WARNING_LEVEL_STOP:I


# instance fields
.field private CAPTURED_RESOLUTION_H:I

.field private CAPTURED_RESOLUTION_W:I

.field private bDrawLivePreview:Z

.field private bSupportRotatePreviewRect:Z

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEnterOrientation:I

.field private mGTShow:Z

.field private mGuideText:Lcom/sec/android/glview/TwGLText;

.field private mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaWarning:Z

.field private mPostProgress:I

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailWidth:F

.field private mPreviousCaptureCount:I

.field private mSideMenuHidden:Z

.field private mThumbnailPreviewHeight:I

.field private mThumbnailPreviewMaxHeight:I

.field private mThumbnailPreviewMaxWidth:I

.field private mThumbnailPreviewPreallocatedBuffer:[I

.field private mThumbnailPreviewWidth:I

.field private mTri:[[Lcom/sec/android/glview/TwGLImage;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x40000000

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    const v0, 0x7f0a035b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    const v0, 0x7f0a035c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    const v0, 0x7f0a035d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    const v0, 0x7f0a035e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_X:F

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_Y:F

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_SIZE:F

    const v0, 0x7f0a0359

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    const v0, 0x7f0a035a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    const v0, 0x7f0a035f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    const v0, 0x7f0a0360

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_PORTRAIT_MARGIN:F

    const v0, 0x7f0a0361

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40e00000

    div-float/2addr v0, v1

    const-string v1, "6"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const v0, 0x7f0a0362

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    const v0, 0x7f0a0363

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    const v0, 0x7f0a0364

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const v0, 0x7f0a0365

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x41400000

    div-float/2addr v0, v1

    const-string v1, "12"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const v0, 0x7f0a0366

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const v0, 0x7f0a0367

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    const v0, 0x7f0a0368

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    const v0, 0x7f0a0369

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const v0, 0x7f0a036c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    const v0, 0x7f0a036f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    const v0, 0x7f0a036d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    const v0, 0x7f0a036e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    const v0, 0x7f0a0370

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    const v0, 0x7f0a0371

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    const v0, 0x7f0a036a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    const v0, 0x7f0a036b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    const/high16 v1, 0x41a00000

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const v0, 0x7f0a0356

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:F

    const v0, 0x7f0a0357

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    const v0, 0x7f0a0358

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0a034e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a034f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a0350

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f0a0351

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0a0352

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a0353

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a0354

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f0a0355

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    sput v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    sput v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    sput v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    const v0, 0x7f0b0034

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    const v0, 0x7f0b0035

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const-string v0, "3264x1836"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_W:I

    const-string v0, "3264x1836"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_H:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x4

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/sec/android/glview/TwGLImage;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setCaptureEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ec

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    const v6, 0x7f0c01be

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ed

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ee

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const v0, 0x7f0a0373

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201e5

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201e3

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201e9

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201df

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:F

    const/4 v5, 0x0

    const v6, 0x7f0201e5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:F

    const v6, 0x7f0201e9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ef

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    const v6, 0x7f0201ee

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    const v6, 0x7f0c01ba

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202a1

    const v5, 0x7f0202a2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v9, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v9, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private hideWarningText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v6, 0x2

    const/high16 v5, 0x40000000

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_PORTRAIT_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_PORTRAIT_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    return-void
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 51
    .param p1    # Z

    monitor-enter p0

    :try_start_0
    const-string v5, "TwGLBurstPanoramaMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLivePreviewLayout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " direction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_6

    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    :cond_2
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v20, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v39, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v8, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_5

    :cond_4
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sget v20, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sget v39, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    goto :goto_1

    :cond_5
    const-string v5, "TwGLBurstPanoramaMenu"

    const-string v8, "updateLivePreviewLayout: Invalid orientation"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v5, :cond_8

    :cond_7
    const-string v5, "TwGLBurstPanoramaMenu"

    const-string v8, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showStopButton()V

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v47, v5, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v27, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v35, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v37, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v38

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v33

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v46, v5, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v26, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v50, v0

    monitor-enter v50
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v5, :pswitch_data_0

    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v17, v35, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v19, v37, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v5, v35, v5

    add-float v34, v34, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v5

    sub-float v16, v34, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v5, v37, v5

    add-float v36, v36, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v5

    sub-float v18, v36, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v5

    div-float v4, v38, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    div-float v6, v33, v5

    new-instance v28, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v28 .. v28}, Landroid/view/animation/LinearInterpolator;-><init>()V

    if-eqz v29, :cond_9

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000

    const/high16 v7, 0x3f800000

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v3, v5, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v8, 0xb2

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_3
    new-instance v43, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v8, 0xb2

    move-object/from16 v0, v43

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v8, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v5, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetClipRect()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5, v3}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->startAnimation()V

    monitor-exit v50

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v50
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :pswitch_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    neg-float v5, v5

    const/high16 v8, 0x40800000

    div-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    add-float v42, v5, v8

    move/from16 v31, v42

    sget v21, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v22, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    move/from16 v48, v31

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float v49, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v8, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v46

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    add-float v5, v31, v47

    const/high16 v8, 0x41400000

    sub-float v46, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    move/from16 v0, v46

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    neg-float v5, v5

    const/high16 v8, 0x40400000

    mul-float/2addr v5, v8

    const/high16 v8, 0x40800000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float v42, v5, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    sub-float v30, v5, v46

    move/from16 v31, v42

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    move/from16 v0, v30

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v46

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v10, 0x40800000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v31

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    const/high16 v5, 0x40000000

    div-float v5, v47, v5

    sub-float v5, v31, v5

    const/high16 v8, 0x41400000

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v46, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/high16 v8, 0x42200000

    add-float v8, v8, v46

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_3
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v5, v5, v26

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v44, v5, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    neg-float v5, v5

    const/high16 v8, 0x40000000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sub-float v42, v5, v8

    move/from16 v45, v42

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v26, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float v31, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v44

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    const/high16 v5, 0x40000000

    div-float v5, v27, v5

    sub-float v5, v44, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v5, v8

    const/high16 v8, 0x41b00000

    sub-float v26, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    const/high16 v9, 0x41900000

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_4
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v26, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v44

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000

    mul-float/2addr v5, v8

    const/high16 v8, 0x41100000

    div-float/2addr v5, v8

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    add-float v27, v5, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x40000000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float v42, v5, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float v31, v5, v8

    move/from16 v45, v42

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    add-float v5, v26, v27

    const/high16 v8, 0x40000000

    div-float v8, v27, v8

    sub-float v26, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    const/high16 v9, 0x41900000

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000

    move v8, v4

    move v10, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    const-wide/16 v8, 0xb2

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v32, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    const-wide/16 v8, 0xb2

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v41, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v8, 0xb2

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v3, v41

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .param p1    # I
    .param p2    # I

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-object v1

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getEnterOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    return v0
.end method

.method public getPreviewThumbnailSize(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_0

    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewThumbnailSize : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    :goto_0
    return-void

    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    int-to-float v2, p2

    div-float v0, v1, v2

    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    int-to-float v2, p1

    div-float v0, v1, v2

    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hideCaptureTri()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideGuideText()V
    .locals 2

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public hideLivePreview()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 0

    return-void
.end method

.method public hidePreviewGroup()V
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hideStopButton()V
    .locals 2

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public hideWarningArrow(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    :cond_1
    return-void
.end method

.method public hideWarningBox()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public declared-synchronized isReadyToCapture()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBack()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureStopped()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetPanoramaCapturing()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v2, 0x1b

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_1

    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_2

    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v2, 0x1b

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_3

    :cond_0
    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->onBack()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_3
    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_4

    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyUp - Preview is not started yet"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLivePreviewData([B)V
    .locals 27
    .param p1    # [B

    monitor-enter p0

    :try_start_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lmj onLivePreviewData , mCapturecount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_4

    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to decode RGBA data for live preview. Data: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    :cond_3
    :goto_1
    if-nez v9, :cond_12

    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, " data:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-eq v3, v4, :cond_1

    const/4 v14, 0x1

    const v7, 0x1869f

    const v8, 0x1869f

    const/4 v15, 0x0

    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_7

    :cond_5
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Received null or invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-ne v14, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/16 v4, 0x47

    if-ne v3, v4, :cond_8

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_8

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_9

    :cond_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Data is invalid (RGBA tag not found)"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v14, 0x0

    :cond_9
    const/4 v3, 0x4

    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v7

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v8

    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    :goto_3
    :try_start_4
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, v7, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x10

    if-ge v3, v4, :cond_6

    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onLivePreviewData: The buffer is too small to contain a image of "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "x"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v16

    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Could not parse panorama bitmap header"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    :goto_4
    :try_start_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/16 v10, 0xff

    const/16 v20, 0x0

    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    move/from16 v0, v17

    if-ge v0, v3, :cond_b

    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v20, v3, 0x10

    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x8

    add-int v20, v20, v3

    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    add-int v20, v20, v3

    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x18

    add-int v20, v20, v3

    aput v20, v18, v17
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :pswitch_2
    :try_start_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v16

    :try_start_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Index Control Failed!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :pswitch_4
    :try_start_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_c

    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    const/16 v23, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_d

    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v24, v24, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    :catch_2
    move-exception v19

    :try_start_b
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_e

    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    const/16 v23, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_f

    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v25, v0

    mul-int v25, v25, v23

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    :catch_3
    move-exception v19

    :try_start_d
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_10

    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v25, v25, v8

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    :catch_4
    move-exception v19

    :try_start_f
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_11

    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    :catch_5
    move-exception v19

    :try_start_11
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    :cond_12
    :try_start_12
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_14

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    :cond_14
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    :cond_15
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_16
    new-instance v3, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    monitor-exit v24
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_17
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ge v3, v4, :cond_26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v4, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v11, v3, v4

    :goto_9
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    :cond_1c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    goto/16 :goto_8

    :cond_1d
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "komlang : onLivePreviewData : invalid orientation "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1f

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    const/16 v22, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_2

    :pswitch_8
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    const/16 v22, 0x1

    goto :goto_b

    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v7, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    :cond_21
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v7, v3

    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    goto :goto_b

    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    add-float/2addr v3, v4

    const v4, 0x7f0a0374

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    add-float v12, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float v13, v3, v4

    goto/16 :goto_8

    :pswitch_a
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v5, v3, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    sub-float/2addr v3, v4

    const v4, 0x7f0a0374

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float v12, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float v13, v3, v4

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_23

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f800000

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c80000

    div-float v8, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    :cond_23
    const v3, 0x7f0a0374

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    add-float v13, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v12, v3, v4

    goto/16 :goto_8

    :pswitch_c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v6, v3, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_24

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f800000

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c80000

    div-float v8, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    :cond_24
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    sub-float/2addr v3, v4

    const v4, 0x7f0a0374

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float v13, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    add-float v12, v3, v4

    goto/16 :goto_8

    :catchall_1
    move-exception v3

    :try_start_15
    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v3

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v11, v3, v4

    goto/16 :goto_9

    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ne v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_a

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_c

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 13
    .param p1    # I

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    const-string v6, "TwGLBurstPanoramaMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-nez v6, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v6, :cond_2

    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged - Already mActivityContext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isPanoramaCapturing()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eq v6, p1, :cond_4

    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/Camera;->showPanoramaToastPopup(I)V

    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    if-eq v6, p1, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lt v6, v11, :cond_6

    const/4 v0, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    packed-switch v6, :pswitch_data_0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    :cond_6
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    :cond_7
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    const/4 v5, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_1

    if-ge v3, v12, :cond_9

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_1
    if-eq p1, v12, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_1

    :pswitch_3
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_1

    :pswitch_4
    if-eq p1, v11, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_3

    :pswitch_5
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    const/4 v5, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_1

    if-ge v3, v12, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    return-void
.end method

.method public onShow()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_0
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 8
    .param p1    # I

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch p1, :pswitch_data_1

    :goto_1
    :pswitch_0
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eq p1, v4, :cond_0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_4

    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    :cond_1
    :goto_2
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f0201e8

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f0201e9

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f0201e0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f0201df

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f0201e2

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f0201e3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f0201e6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f0201e5

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    :cond_4
    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_1

    :cond_5
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public panoramaMoveSlowly()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showGuideText()V

    :cond_0
    return-void
.end method

.method public panoramaRectChanged(II)V
    .locals 27
    .param p1    # I
    .param p2    # I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v24

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_W:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v12, v23, v24

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_H:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42700000

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v13, v14, v23

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    if-gez p2, :cond_4

    :cond_2
    const-wide/16 v21, 0x0

    :cond_3
    :goto_2
    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    :goto_3
    :pswitch_2
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Stop case - totalDistance:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    :pswitch_3
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v24

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_W:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v12, v23, v24

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_H:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42700000

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v13, v14, v23

    goto/16 :goto_1

    :pswitch_4
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_W:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v12, v14, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_H:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v23, v24

    goto/16 :goto_1

    :pswitch_5
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_W:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v12, v14, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURED_RESOLUTION_H:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v23, v24

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    if-gtz p1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    :cond_6
    const-wide/16 v19, 0x0

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v7

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", abs xy = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_a

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    :goto_4
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    :cond_8
    :goto_5
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-lt v3, v0, :cond_12

    cmpl-double v23, v21, v19

    if-lez v23, :cond_10

    if-lez p2, :cond_f

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    const/high16 v23, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v23, v23, v24

    add-float v23, v23, v13

    const v24, 0x7f0a0372

    invoke-static/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v24

    add-float v5, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_2

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " XY = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0000000000000L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_b

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_4

    :cond_b
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_4

    :cond_c
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_5

    :cond_e
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v23, v24

    const/high16 v23, 0x40800000

    div-float v23, v8, v23

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    add-float v23, v12, v9

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v8, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    :cond_f
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_3

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v23, v24

    const/high16 v23, 0x40800000

    div-float v23, v8, v23

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_8

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_8

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    add-float v23, v12, v9

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v8, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_8

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_8

    :cond_10
    if-lez p1, :cond_11

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v4, v12, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_4

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v4, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v4, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v4, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    :cond_11
    if-gez p1, :cond_9

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v4, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_5

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v7

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", abs xy = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_16

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    :goto_b
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    :cond_14
    :goto_c
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-lt v3, v0, :cond_1e

    cmpl-double v23, v19, v21

    if-lez v23, :cond_1c

    if-lez p1, :cond_1b

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v4, v12, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_6

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_15
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " XY = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_16
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0000000000000L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_17

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_b

    :cond_17
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_b

    :cond_18
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_c

    :cond_1a
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_c

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    add-float v23, v13, v8

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    :cond_1b
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v4, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_7

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_e

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_f

    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    add-float v23, v13, v8

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_f

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_f

    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_f

    :cond_1c
    if-gez p2, :cond_1d

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_8

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_e

    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v5, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    :pswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v5, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    :cond_1d
    if-lez p2, :cond_15

    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v5, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_9

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_e

    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bb

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v13

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    const v24, 0x7f0a0372

    invoke-static/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v24

    add-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01ba

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v5

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    :pswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bd

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    :pswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0c01bc

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_23
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "komlang : called reset!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->resetAcquisitionProgress()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideCaptureTri()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->startCancelTimer()V

    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForVirtualKey()V

    :cond_0
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panoramaRectChanged mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnterOrientation(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    return-void
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    return-void
.end method

.method public declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1    # I

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V
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

.method public setPreviewThumbnailSizeToDefault()V
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    return-void
.end method

.method public showGuideText()V
    .locals 4

    const/4 v3, 0x5

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    goto :goto_0
.end method

.method public showPostCaptureLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    return-void
.end method

.method public showPreviewGroup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showStopButton()V
    .locals 2

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public stopPanoramaSound()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    :cond_2
    return-void
.end method

.method public updateArrow()V
    .locals 9

    const/high16 v5, 0x40400000

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/high16 v7, 0x40000000

    const/4 v6, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f0a0374

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0a0374

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v6

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v6

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v6

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v4

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v4

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
