.class public Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPanoramaMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:F

.field private static final LIVEPREVIEW_ALPHA_ANIM_TIME:I = 0x1f4

.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_X:F

.field private static final LIVEPREVIEW_LANDSCAPE_Y:F

.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_X:F

.field private static final LIVEPREVIEW_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_RECT_THICKNESS:F

.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_WIDTH:F

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final PANORAMASHOT_ARROWS_COLOR:I

.field private static PANORAMASHOT_POPUP_GROUP_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_WIDTH:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_X:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_Y:F = 0.0f

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

.field private static PANORAMASHOT_PROGRESSBAR_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_Y:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_SIZE:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_Y:F = 0.0f

.field private static final PANORAMASHOT_RECT_HEIGHT:F

.field private static final PANORAMASHOT_RECT_MARGIN:F

.field private static final PANORAMASHOT_RECT_WIDTH:F

.field private static final PANORAMASHOT_ROOT_SHIFT:F

.field private static final PANORAMASHOT_TRI_HEIGHT:I

.field private static final PANORAMASHOT_TRI_POS_X:[I

.field private static final PANORAMASHOT_TRI_POS_Y:[I

.field private static final PANORAMASHOT_TRI_WIDTH:I

.field private static final PANORAMASHOT_VIEWFINDER_COLOR:I

.field private static final PANORAMASHOT_VIEWFINDER_DESTINATION_COLOR:I

.field private static final PANORAMASHOT_VIEWFINDER_DESTINATION_THICKNESS:I = 0x1

.field private static final PANORAMASHOT_VIEWFINDER_THICKNESS:I

.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x8

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static STATUSBAR_HEIGHT:F = 0.0f

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLPanoramaMenu"

.field private static final VIEWFINDER_DESTINATION_HEIGHT:F

.field private static final VIEWFINDER_DESTINATION_WIDTH:F

.field private static final VIEWFINDER_DESTINATION_X:F

.field private static final VIEWFINDER_DESTINATION_Y:F


# instance fields
.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mDetectedDirection:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsPanoramaCapturing:Z

.field private mLandscapeStitching:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mPostProgress:I

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z

.field private mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/high16 v5, 0x40000000

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0a0201

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    const v0, 0x7f0a047b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    const v0, 0x7f0a047c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    const v0, 0x7f0a047d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    const v0, 0x7f0a047e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    const v0, 0x7f0a0485

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    const v0, 0x7f0a0486

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    const v0, 0x7f0a0487

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    const v0, 0x7f0a02ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    const v0, 0x7f0b004f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    const v0, 0x7f0a047f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    const v0, 0x7f0a0011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    const v0, 0x7f0a0481

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    const v0, 0x7f0a0482

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    new-array v0, v4, [F

    const v1, 0x7f0a0488

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a0489

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    new-array v0, v4, [F

    const v1, 0x7f0a048a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a048b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    const v0, 0x7f0a0008

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STATUSBAR_HEIGHT:F

    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0a048e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a048f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a0490

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a0491

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0a0492

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a0493

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a0494

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a0495

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const v0, 0x7f0a0496

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    const v0, 0x7f0a0497

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    const v0, 0x7f0a0498

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    const v0, 0x7f0a0499

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    const v0, 0x7f0a049a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    const v0, 0x7f0a048c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    const v0, 0x7f0a048d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    const v1, 0x7f0a0015

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_X:F

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_Y:F

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_SIZE:F

    const v0, 0x7f0a049b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const v0, 0x7f0a049c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const v0, 0x7f0a049d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    const v0, 0x7f0a049e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    const v0, 0x7f0a049f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const v0, 0x7f0a04a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const v0, 0x7f0a04a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    const v0, 0x7f0a04a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v0, 0x7f0a04a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const v0, 0x7f0a04a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const v0, 0x7f0a04a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const v0, 0x7f0a04a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    const v0, 0x7f0a04a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    const v0, 0x7f0a04a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_WIDTH:F

    const v0, 0x7f0a04a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_HEIGHT:F

    const v0, 0x7f0a0200

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_THICKNESS:I

    const v0, 0x7f09000a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_COLOR:I

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_DESTINATION_COLOR:I

    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STOP_BUTTON_POS_X:I

    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STOP_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLTriangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setCaptureEnabled(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const v6, 0x7f0201ea

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v5, 0x40000000

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v6, 0x40000000

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const v6, 0x7f0201eb

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f0c0010

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f02039a

    const v7, 0x7f020399

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0c012d

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202a1

    const v5, 0x7f0202a2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/high16 v6, 0x42b40000

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x2

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/high16 v6, 0x43340000

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x3

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/high16 v6, 0x43870000

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    const/high16 v7, 0x40000000

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_COLOR:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_DESTINATION_COLOR:I

    const/high16 v7, 0x3f800000

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 8

    const/4 v3, 0x0

    const v7, 0x7f0a0007

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x40000000

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0204d3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STATUSBAR_HEIGHT:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v2, v2, v4

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v1, v2

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0a0006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    return-void
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 8

    const/high16 v7, 0x41100000

    const/high16 v6, 0x40000000

    monitor-enter p0

    :try_start_0
    const-string v2, "TwGLPanoramaMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLivePreviewLayout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    if-eqz p1, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v6

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showStopButton()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    const/high16 v4, 0x41000000

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    sub-float v4, v7, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_4
    return-void
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getPostCaptureProgress(I)I
    .locals 3

    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    return-void
.end method

.method public hideHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    return-void
.end method

.method public hideStopButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public onBack()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideStopButton()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideCaptureLayout()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v2, 0x1b

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_3

    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v2, 0x1b

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    if-gtz v1, :cond_0

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLivePreviewData([B)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_1
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Integer;

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to decode RGBA data for live preview. Data: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    :cond_3
    :goto_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v1, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    sub-float v4, v0, v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v1, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    sub-float v5, v0, v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    :goto_2
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8, v10}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->bringToFront()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Orientation was not set before the second frame! Forcing orientation to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    if-eqz v0, :cond_9

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v1, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    sub-float v5, v0, v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v1, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v11, 0x3f800000

    add-float/2addr v1, v11

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000

    div-float v4, v0, v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    const/high16 v1, 0x40400000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    add-float v8, v0, v1

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    goto/16 :goto_2

    :cond_9
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v1, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    sub-float v4, v0, v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v11, 0x3f800000

    add-float/2addr v1, v11

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000

    div-float v5, v0, v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v11

    sub-float/2addr v0, v1

    const/high16 v1, 0x40e00000

    iget v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v11, v11

    sub-float/2addr v1, v11

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000

    div-float v10, v0, v1

    goto/16 :goto_2

    :cond_a
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_1

    if-eq p1, v2, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    if-eq p1, v3, :cond_3

    if-ne p1, v4, :cond_1

    :cond_3
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public panoramaRectChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v1, p1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v1, v2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->translateAbsolute(FF)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->resetAcquisitionProgress()V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hidePostCaptureLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideStopButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->startCancelTimer()V

    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    :cond_0
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased()V
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideHelpText()V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    return-void
.end method

.method public declared-synchronized setPostCaptureProgress(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPostCaptureProgress :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideStopButton()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showPostCaptureLayout()V

    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    :cond_2
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showCaptureLayout()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hidePostCaptureLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showHelpText()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideHelpText()V

    return-void
.end method

.method public showStopButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
