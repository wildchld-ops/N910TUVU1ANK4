.class public Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLUltraWideShotMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$OnUltraWideShotCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_TOP_MARGIN_LEFT:F

.field private static final ANIMATION_TOP_MARGIN_TOP:F

.field private static final ARROW_LANDSCAPE_OVERLAY:F

.field private static final ARROW_MARGIN:F

.field private static final BACKGROUND_RECT_PORTRAIT_X:[F

.field private static final BACKGROUND_RECT_PORTRAIT_Y:[F

.field private static final CAPTURE_ANGLE_120:I = 0x78

.field private static final CAPTURE_ANGLE_150:I = 0x96

.field private static final CAPTURE_ANGLE_BUTTON_PORT_MARGIN:F

.field private static final CAPTURE_ANGLE_BUTTON_POS_Y:F

.field private static final CAPTURE_ANGLE_MARGIN:F

.field private static final DIRECTION_INDICATOR_POS_X:[F

.field private static final DIRECTION_INDICATOR_POS_Y:[F

.field private static final FOCUS_RECT_LANDSCAPE_X:F

.field private static final FOCUS_RECT_LANDSCAPE_Y:F

.field private static final FOCUS_RECT_PORTRAIT_X:F

.field private static FOCUS_RECT_PORTRAIT_Y:F = 0.0f

.field public static final GUIDETEXT_LEFT:I = 0x1

.field public static final GUIDETEXT_NONE:I = 0x3

.field public static final GUIDETEXT_RIGHT:I = 0x2

.field public static final GUIDETEXT_START:I = 0x0

.field public static final GUIDE_ALL:I = 0x0

.field public static final GUIDE_LEFT:I = 0x1

.field public static final GUIDE_RIGHT:I = 0x2

.field private static final GUIDE_TEXT_HEIGHT:F

.field private static GUIDE_TEXT_PORTRAIT_HEIGHT:F = 0.0f

.field private static final GUIDE_TEXT_PORTRAIT_X:[F

.field private static final GUIDE_TEXT_PORTRAIT_Y:[F

.field private static final GUIDE_TEXT_POS_X:F

.field private static final GUIDE_TEXT_SET_SHADOW:Z

.field private static final GUIDE_TEXT_SHADOW_OFFSET:I

.field private static final GUIDE_TEXT_SHADOW_POS_Y:I

.field private static final GUIDE_TEXT_SIZE:F

.field private static final GUIDE_TEXT_STROKE_COLOR:I

.field private static final GUIDE_TEXT_STROKE_WIDTH:I

.field private static final GUIDE_TEXT_WIDTH:F

.field private static final LANDSCAPE:I = 0x0

.field private static LANDSCAPE_CAPTURE_COUNT:I = 0x0

.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_X:F

.field private static final LIVEPREVIEW_LANDSCAPE_Y:F

.field private static LIVEPREVIEW_PORTRAIT_HEIGHT:F = 0.0f

.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_X:F

.field private static final LIVEPREVIEW_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_RATIO:F

.field private static final LIVEPREVIEW_RECT_THICKNESS:F

.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_X:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_PORTRAIT_Y:F = 0.0f

.field private static final LIVEPREVIEW_SINGLE_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_X:F

.field private static final LIVEPREVIEW_SINGLE_Y:F = 0.0f

.field private static final MESSAGE_PLAY_HAPTIC:I = 0x9

.field private static final MESSAGE_SHOW_LIVEPREVIEW:I = 0xa

.field private static final MESSAGE_START_ANIMATION:I = 0x6

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_GUIDETEXT:I = 0x5

.field private static final MESSAGE_TIMEOUT_SKIP_CAPTURE:I = 0x7

.field private static final MESSAGE_TIMEOUT_SKIP_CHECK_WARNING:I = 0x8

.field private static final MESSAGE_ULTRA_WIDE_SHOT_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_ULTRA_WIDE_SHOT_WARNING_LOW:I = 0x2

.field private static final NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

.field private static final NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

.field private static OFFSET_DISTANCE_HORIZONTAL:I = 0x0

.field private static OFFSET_DISTANCE_VERTICAL:I = 0x0

.field private static final PORTRAIT:I = 0x1

.field private static PORTRATE_CAPTURE_COUNT:I = 0x0

.field private static final PREVIEW_EASYMODE_GUIDE_PORTRAIT_MARGIN:F

.field private static final PREVIEW_EASYMODE_PORTRAIT_MARGIN:F

.field private static final PREVIEW_LEFT_MARGIN:F

.field private static final PREVIEW_PORTRAIT_MARGIN:F

.field private static final PREVIEW_TOP_MARGIN:F

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static SCREEN_HEIGHT:I = 0x0

.field private static final SCREEN_RATIO:F

.field protected static SCREEN_WIDTH:I = 0x0

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLUltraWideShotMenu"

.field public static final WARNINGTEXT_MOVE_SLOWLY:I = 0x4

.field public static final WARNINGTEXT_WARNING_DOWN:I = 0x1

.field public static final WARNINGTEXT_WARNING_LEFT:I = 0x2

.field public static final WARNINGTEXT_WARNING_RIGHT:I = 0x3

.field public static final WARNINGTEXT_WARNING_UP:I

.field private static WARNING_DOWN:I

.field private static WARNING_LEFT:I

.field private static WARNING_LEVEL_HIGH:I

.field private static WARNING_LEVEL_LOW:I

.field private static WARNING_LEVEL_NONE:I

.field private static WARNING_LEVEL_STOP:I

.field private static WARNING_NONE:I

.field private static WARNING_RIGHT:I

.field private static WARNING_UP:I


# instance fields
.field private mAnimationDirection:Z

.field private mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureAngle:I

.field private mCaptureAngleButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureCount:I

.field private mCaptureError:Z

.field private mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

.field private mChanged:Z

.field private mCurrentDirection:I

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEncodingProgress:Z

.field private mFocusRectCenterX:F

.field private mFocusRectCenterY:F

.field private mFocusRectLeft:F

.field private mFocusRectTop:F

.field private mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mGuideBlinkingAnimation:Landroid/view/animation/Animation;

.field private mGuideDirection:I

.field private mGuideOrient:I

.field private mGuideRect:[Lcom/sec/android/glview/TwGLImage;

.field private mGuideShow:Z

.field private mGuideState:I

.field private mGuideText:Lcom/sec/android/glview/TwGLText;

.field private mHeight:F

.field private mIsStartCapture:Z

.field private mIsUltraWideShotCapturing:Z

.field private mLandscapeOffset:D

.field private mLeftBottomX:F

.field private mLeftBottomY:F

.field private mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

.field private mLeftTopX:F

.field private mLeftTopY:F

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$OnUltraWideShotCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMovingDetection:Z

.field private mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

.field private mNextCaptureFocusRectCenterX:F

.field private mNextCaptureFocusRectCenterY:F

.field private mNextCaptureFocusRectLeft:F

.field private mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

.field private mNextCaptureFocusRectTop:F

.field private mNextCaptureFocusStep:I

.field private mPlayHaptic:Z

.field private mPostProgress:I

.field private mPotraitOffset:D

.field private mPrevFocusRectCenterX:F

.field private mPrevFocusRectCenterY:F

.field private mPrevThumbnailHeight:F

.field private mPrevThumbnailWidth:F

.field private mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailLeft:F

.field private mPreviewThumbnailTop:F

.field private mPreviewThumbnailWidth:F

.field private mRightBottomX:F

.field private mRightBottomY:F

.field private mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

.field private mRightTopX:F

.field private mRightTopY:F

.field private mSkipCapture:Z

.field private mSkipCheckWarning:Z

.field private mSkipFrame:I

.field private mStartCheckWarning:Z

.field private mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

.field private mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field protected mUltraWideShotMsgHandler:Landroid/os/Handler;

.field private mUltraWideShotWarning:Z

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningBox:Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_RATIO:F

    const v0, 0x7f0a03e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_WIDTH:F

    const v0, 0x7f0a03e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_HEIGHT:F

    const v0, 0x7f0a03e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_POS_X:F

    const v0, 0x7f0a03e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    new-array v0, v4, [F

    const v3, 0x7f0a03e5

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v2

    const v3, 0x7f0a03e7

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_X:[F

    new-array v0, v4, [F

    const v3, 0x7f0a03e6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v2

    const v3, 0x7f0a03e8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_Y:[F

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SIZE:F

    const v0, 0x7f0a04d3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SHADOW_POS_Y:I

    const v0, 0x7f0b0028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SET_SHADOW:Z

    const v0, 0x7f0b001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SHADOW_OFFSET:I

    const v0, 0x7f0b0027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_STROKE_WIDTH:I

    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_STROKE_COLOR:I

    const v0, 0x7f0a03f7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    const v0, 0x7f0a03f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_LANDSCAPE_OVERLAY:F

    const v0, 0x7f0a03d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const v0, 0x7f0a03d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const v0, 0x7f0a03db

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    const v0, 0x7f0a03dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    const v0, 0x7f0a03d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const v0, 0x7f0a03da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const v0, 0x7f0a03dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    const v0, 0x7f0a03de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_RATIO:F

    mul-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_RATIO:F

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    const v0, 0x7f0a03df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v3, 0x44f00000

    div-float/2addr v0, v3

    const v3, 0x3fb6a7f0

    mul-float/2addr v0, v3

    const v3, 0x3f9d70a4

    mul-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    const v0, 0x7f0a0401

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    new-array v0, v4, [F

    const v3, 0x7f0a03eb

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v2

    const v3, 0x7f0a03ed

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->BACKGROUND_RECT_PORTRAIT_X:[F

    new-array v0, v4, [F

    const v3, 0x7f0a03ec

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v2

    const v3, 0x7f0a03ee

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->BACKGROUND_RECT_PORTRAIT_Y:[F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_Y:F

    const v0, 0x7f0a03ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_TOP_MARGIN:F

    const v0, 0x7f0a03f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_LEFT_MARGIN:F

    const v0, 0x7f0a03f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_PORTRAIT_MARGIN:F

    const v0, 0x7f0a03f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_EASYMODE_PORTRAIT_MARGIN:F

    const v0, 0x7f0a03f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_EASYMODE_GUIDE_PORTRAIT_MARGIN:F

    const v0, 0x7f0a03f4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    const v0, 0x7f0a03f5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    new-array v0, v6, [F

    const v3, 0x7f0a0402

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v2

    const v3, 0x7f0a0403

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v1

    const v3, 0x7f0a0404

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v4

    const v3, 0x7f0a0405

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->DIRECTION_INDICATOR_POS_X:[F

    new-array v0, v6, [F

    const v3, 0x7f0a0406

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v2

    const v3, 0x7f0a0407

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v1

    const v3, 0x7f0a0408

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v4

    const v3, 0x7f0a0409

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->DIRECTION_INDICATOR_POS_Y:[F

    const v0, 0x7f0a03ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->CAPTURE_ANGLE_BUTTON_POS_Y:F

    const v0, 0x7f0a03fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->CAPTURE_ANGLE_MARGIN:F

    const v0, 0x7f0a0400

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->CAPTURE_ANGLE_BUTTON_PORT_MARGIN:F

    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PORTRATE_CAPTURE_COUNT:I

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LANDSCAPE_CAPTURE_COUNT:I

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_NONE:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_LOW:I

    sput v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_HIGH:I

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_STOP:I

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    sput v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    sput v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_NONE:I

    const v0, 0x7f0b003f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->OFFSET_DISTANCE_VERTICAL:I

    const v0, 0x7f0b0040

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->OFFSET_DISTANCE_HORIZONTAL:I

    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->STOP_BUTTON_POS_X:I

    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->STOP_BUTTON_POS_Y:I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
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

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipFrame:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCapture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureError:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCheckWarning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPlayHaptic:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningBox:Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mAnimationDirection:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mChanged:Z

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mEncodingProgress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mMovingDetection:Z

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setCaptureEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setTouchHandled(Z)V

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ee

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ec

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const v6, 0x7f0201ee

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020392

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020393

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020503

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020500

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020501

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020502

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020388

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020386

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020384

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020394

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02038b

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02038d

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x6

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02038f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020389

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020387

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0x9

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020385

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xa

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020395

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xb

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02038c

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xc

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02038e

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xd

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020390

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200cb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200cd

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x6

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200cf

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a03da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200ca

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a03da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0x9

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a03da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xa

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a03da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xb

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a03da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200cc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xc

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a03da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200ce

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    const/16 v1, 0xd

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a03da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200d0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningBox:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningBox:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningBox:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202a1

    const v5, 0x7f0202a2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningBox:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_1
    const/16 v0, 0xe

    if-ge v8, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/16 v0, 0xe

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$OnUltraWideShotCaptureCancelListener;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$OnUltraWideShotCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPlayHaptic:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)[Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)[Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)[Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopLivePreviewHaptic()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)D
    .locals 2
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPotraitOffset:D

    return-wide v0
.end method

.method static synthetic access$2200()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->OFFSET_DISTANCE_VERTICAL:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)D
    .locals 2
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLandscapeOffset:D

    return-wide v0
.end method

.method static synthetic access$2400()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->OFFSET_DISTANCE_HORIZONTAL:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)[Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mAnimationDirection:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mAnimationDirection:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private decodeRgbaBitmap([B)Landroid/graphics/Bitmap;
    .locals 17
    .param p1    # [B

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    const/16 v15, 0x10

    if-ge v14, v15, :cond_2

    :cond_0
    const-string v14, "TwGLUltraWideShotMenu"

    const-string v15, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v14, 0x0

    aget-byte v14, p1, v14

    const/16 v15, 0x52

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x47

    if-ne v14, v15, :cond_3

    const/4 v14, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x42

    if-ne v14, v15, :cond_3

    const/4 v14, 0x3

    aget-byte v14, p1, v14

    const/16 v15, 0x41

    if-eq v14, v15, :cond_4

    :cond_3
    const-string v14, "TwGLUltraWideShotMenu"

    const-string v15, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v14, 0x4

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v13

    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    mul-int v15, v13, v6

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x10

    if-ge v14, v15, :cond_5

    const-string v14, "TwGLUltraWideShotMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v14, "TwGLUltraWideShotMenu"

    const-string v15, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x10

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v14, 0x10

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x10

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v14, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v9, v13

    move v8, v6

    if-eqz v10, :cond_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-gez v10, :cond_6

    add-int/lit16 v10, v10, 0x168

    goto :goto_1

    :catch_1
    move-exception v7

    const-string v14, "TwGLUltraWideShotMenu"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_7

    move v9, v6

    move v8, v13

    const/16 v10, -0x5a

    const/4 v11, 0x0

    move v12, v13

    :goto_2
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x0

    move-object v2, v4

    goto/16 :goto_0

    :cond_7
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0xb4

    if-ne v14, v15, :cond_8

    const/16 v10, 0xb4

    move v11, v13

    move v12, v6

    goto :goto_2

    :cond_8
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x10e

    if-ne v14, v15, :cond_9

    move v9, v6

    move v8, v13

    const/16 v10, 0x5a

    move v11, v6

    const/4 v12, 0x0

    goto :goto_2

    :cond_9
    const-string v14, "TwGLUltraWideShotMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: Rotation flag is invalid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). Discarded thumbnail."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v7

    const-string v14, "TwGLUltraWideShotMenu"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [2]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private init()V
    .locals 8

    const v5, 0x7f090008

    const/4 v7, 0x2

    const v2, 0x40490fdb

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SHADOW_POS_Y:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const v4, 0x7f0b0051

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v4, v6}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SHADOW_POS_Y:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const v2, 0x7f0b0051

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    return-void
.end method

.method private resetTrapezoid()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    return-void
.end method

.method private startLivePreviewHaptic()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private stopLivePreviewHaptic()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public MoveSlowly()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsUltraWideShotCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningText(I)V

    :cond_0
    return-void
.end method

.method public checkWarningDirection()I
    .locals 5

    const/16 v4, 0x96

    const/16 v3, 0x78

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-nez v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_NONE:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getSkipCheckWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_NONE:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v2, :cond_e

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-ne v0, v2, :cond_6

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    if-eq v0, v1, :cond_5

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v3, :cond_9

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_a

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v4, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-ne v0, v2, :cond_c

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    if-eq v0, v1, :cond_b

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    goto :goto_0

    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    goto :goto_0

    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v2, :cond_14

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v3, :cond_f

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_10

    :cond_f
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-ne v0, v2, :cond_12

    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    if-eq v0, v1, :cond_11

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    goto/16 :goto_0

    :cond_14
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v3, :cond_15

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_16

    :cond_15
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v0, v4, :cond_18

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-ne v0, v2, :cond_18

    :cond_16
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    if-eq v0, v1, :cond_17

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    goto/16 :goto_0

    :cond_17
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    goto/16 :goto_0

    :cond_18
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    goto/16 :goto_0

    :cond_19
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    goto/16 :goto_0

    :cond_1a
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_NONE:I

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public clearUltraWideRect()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarning()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setVisibility(I)V

    return-void
.end method

.method public getCaptureAngle()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x78

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    goto :goto_0
.end method

.method public getCaptureError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureError:Z

    return v0
.end method

.method public declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFocusRectDistance()F
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterY:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGuideDirection(I)I
    .locals 3
    .param p1    # I

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v2, v0, :cond_4

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v0, :cond_3

    if-ne p1, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v1, :cond_5

    if-ne p1, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    sparse-switch v2, :sswitch_data_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v0, :cond_6

    if-eq p1, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v1, :cond_5

    if-ne p1, v1, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v0, :cond_7

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v1, :cond_5

    if-eq p1, v1, :cond_8

    if-ne p1, v0, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0x96 -> :sswitch_1
    .end sparse-switch
.end method

.method public getLivePreviewHapticLevel()I
    .locals 6

    const/16 v3, 0x8

    const/4 v0, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v4, v5

    int-to-float v5, v3

    div-float v1, v4, v5

    :goto_0
    cmpg-float v4, v2, v1

    if-gez v4, :cond_2

    :goto_1
    return v3

    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v4, v5

    int-to-float v5, v3

    div-float v1, v4, v5

    goto :goto_0

    :cond_2
    const/high16 v3, 0x40000000

    mul-float/2addr v3, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    const/high16 v3, 0x40400000

    mul-float/2addr v3, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    const/16 v3, 0xa

    goto :goto_1

    :cond_4
    const/16 v3, 0xb

    goto :goto_1
.end method

.method public getNextFocusRectDistance()F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getPreviewThumbnailSize(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    int-to-float v0, p1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    int-to-float v0, p2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    return-void
.end method

.method public getSkipCapture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCapture:Z

    return v0
.end method

.method public getSkipCheckWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCheckWarning:Z

    return v0
.end method

.method public hideCaptureAngleButton()V
    .locals 0

    return-void
.end method

.method public hideGuideRect()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hideGuideText()V
    .locals 2

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public hideStopButton()V
    .locals 2

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public hideWarning()V
    .locals 2

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "hideWarning"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningBox:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    return-void
.end method

.method public hideWarningArrow()V
    .locals 5

    const/16 v4, 0xe

    const/4 v3, 0x4

    const-string v1, "TwGLUltraWideShotMenu"

    const-string v2, "hideWarningArrow"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public hideWarningText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isEasyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxPositionReached(FF)Z
    .locals 5
    .param p1    # F
    .param p2    # F

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v3, :cond_2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    if-nez v2, :cond_3

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v3, :cond_5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    if-nez v2, :cond_6

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isMenuOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isListMenuOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isModeMenuOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextFocusRectBoundary()Z
    .locals 5

    const/4 v2, 0x1

    const/high16 v0, 0x40000000

    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getCurrentTop()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized isReadyToCapture()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;
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

.method public isRectGuideVisible()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isUltraWideShotCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsUltraWideShotCapturing:Z

    return v0
.end method

.method public onBack()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setCaptureError(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onUltraWideShotCaptureStopped()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setWinkDetected(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isUltraWideShotCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelShutterTimer()V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->reset()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onUltraWideShotCaptureCancelled()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setCaptureError(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStopUltraWideShotSync()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideStopButton()V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideCropArea()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->clearUltraWideRect()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopUltraWideShotSound()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setPreviewThumbnailSizeToDefault()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPostProgress:I

    if-lez v0, :cond_1

    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown - it is stitching ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPostProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v2, 0x1b

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_6

    :cond_0
    if-ne p1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TwGLUltraWideShotMenu"

    const-string v2, "onKeyUp - Preview is not started yet"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isUltraWideShotCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->onBack()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showPreviewGroup()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->IsWideSelfieLowLightDetected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showUltraWideShotToastPopup(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPostProgress:I

    if-gtz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized onLivePreviewData([B)V
    .locals 14
    .param p1    # [B

    const/4 v3, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mSkipFrameOnUltraWideShot:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipFrame:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->clearUltraWideRect()V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipFrame:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipFrame:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showPreviewGroup()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mSkipFrameOnUltraWideShot:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipFrame:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    if-nez v0, :cond_5

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/sec/android/app/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z

    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailWidth:F

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailHeight:F

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getPreviewThumbnailSize(II)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLivePreviewData : invalid orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isUltraWideShotCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_6
    const/16 v0, 0xb4

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Lcom/sec/android/app/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    if-gt v0, v2, :cond_d

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_X:F

    const/4 v10, 0x0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    :cond_9
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v3, v10

    const/high16 v4, 0x40000000

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v5

    sub-float v4, v11, v4

    const/high16 v5, 0x40000000

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v5, v13

    sub-float v5, v7, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isRectGuideVisible()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsUltraWideShotCapturing:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    const/16 v0, 0x8

    new-array v9, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    aput v1, v9, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    aput v1, v9, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    aput v1, v9, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    aput v1, v9, v0

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    aput v1, v9, v0

    const/4 v0, 0x5

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    aput v1, v9, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    aput v1, v9, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    aput v1, v9, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    invoke-virtual {v0, v1, v2, v9}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setRect(FF[F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setVisibility(I)V

    :cond_b
    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mChanged:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->refreshBackgroundRect()V

    :cond_c
    monitor-exit v12

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_d
    iget v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailLeft:F

    const/4 v10, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v3, :cond_e

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z

    goto/16 :goto_2

    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z

    goto/16 :goto_2

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    if-gt v0, v2, :cond_f

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const/4 v8, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    goto/16 :goto_2

    :cond_f
    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    const/4 v8, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v3, :cond_10

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_11
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    goto :goto_3

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    :cond_13
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0201ee

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v11, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/16 v3, 0xa

    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mCurrentOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "onOrientationChanged - Already mActivityContext is null or This is not a WideSelfie mode"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->clearUltraWideRect()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isUltraWideShotCapturing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eq v0, p1, :cond_5

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "onOrientationChanged isTimerCounting return"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->refreshLivePreviewPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onUltraWideShotCaptureCancelled()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->showUltraWideShotToastPopup(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->refreshLivePreviewPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCropArea(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isUltraWideShotStopping()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setCaptureError(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopUltraWideShot()V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideStopButton()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setSkipCapture(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onUltraWideShotCaptureCancelled()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->reset()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showPreviewGroup()V

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    if-gtz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mEncodingProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCropArea(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showPreviewGroup()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideStopButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    :cond_0
    return-void
.end method

.method public onUltraWideDirectionChanged(I)V
    .locals 7
    .param p1    # I

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v2, "TwGLUltraWideShotMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUltraWideDirectionChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mChanged:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-eq v2, p1, :cond_2

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mChanged:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    :cond_2
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-nez v2, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-eq v2, p1, :cond_4

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningBox:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    const-string v2, "TwGLUltraWideShotMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUltraWideDirectionChanged: mDetectedDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showStopButton()V

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    goto :goto_1

    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v6, :cond_7

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUltraWideRectChanged([B)V
    .locals 40
    .param p1    # [B

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v16

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v28

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v23

    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v15

    const/16 v3, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v21

    const/16 v3, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v22

    const/16 v3, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v19

    const/16 v3, 0x1c

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v20

    const/16 v3, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v26

    const/16 v3, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v27

    const/16 v3, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v17

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v18

    const/16 v3, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v24

    const/16 v3, 0x34

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v25

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setFocusRectLeftTop(FF)V

    move/from16 v0, v16

    int-to-float v3, v0

    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    int-to-float v6, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setPreviewThumbnailLeftTop(FFFF)V

    move/from16 v0, v19

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v26

    int-to-float v6, v0

    move/from16 v0, v27

    int-to-float v7, v0

    move/from16 v0, v24

    int-to-float v8, v0

    move/from16 v0, v25

    int-to-float v9, v0

    move/from16 v0, v17

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v11, v0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setTrapezoidPosition(FFFFFFFF)V

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged: mDetectedDirection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged: mFocusRectCenterX :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFocusRectCenterY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged: mFocusRectLeft :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFocusRectTop : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    move/from16 v31, v0

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_NONE:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v36, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPotraitOffset:D

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLandscapeOffset:D

    const/16 v35, 0x0

    sget v34, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_NONE:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mMovingDetection:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_2
    const-wide/high16 v3, 0x4024000000000000L

    cmpl-double v3, v38, v3

    if-gtz v3, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    :cond_4
    const-wide/high16 v3, 0x4024000000000000L

    cmpl-double v3, v36, v3

    if-lez v3, :cond_6

    :cond_5
    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xDistance : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , yDistance : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideGuideRect()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mMovingDetection:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mAnimationDirection:Z

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailLeft:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v36, v0

    :goto_1
    sget v35, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    :goto_2
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    move/from16 v0, v35

    float-to-double v3, v0

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v3, v5

    cmpg-double v3, v32, v3

    if-gez v3, :cond_14

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_NONE:I

    :goto_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_NONE:I

    if-ne v12, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->restartCancelTimer()V

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->prepareWarningArrow(I)V

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_LOW:I

    if-lt v12, v3, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isRectGuideVisible()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getFocusRectDistance()F

    move-result v3

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged  Warning mLeftTopX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLeftTopY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRightTopX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRightTopY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRightBottomX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLeftBottomX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLeftBottomY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged Warning mWidth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHeight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    new-array v0, v3, [F

    move-object/from16 v29, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    aput v4, v29, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    aput v4, v29, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    aput v4, v29, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    aput v4, v29, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    aput v4, v29, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    aput v4, v29, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    aput v4, v29, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    aput v4, v29, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v5, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setRect(FF[F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setVisibility(I)V

    :cond_a
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    :goto_5
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_STOP:I

    if-ne v12, v3, :cond_0

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged: Stop case - totalDistance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarning()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopUltraWideShotSound()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setCaptureError(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopUltraWideShot()V

    goto/16 :goto_0

    :cond_b
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailLeft:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v36, v0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v36, v0

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getCurrentRight()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v36, v0

    goto/16 :goto_1

    :cond_e
    const-wide/16 v36, 0x0

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mStartCheckWarning:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v38, v0

    :goto_6
    sget v35, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    goto/16 :goto_2

    :cond_10
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v38, v0

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v38, v0

    goto :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v38, v0

    goto :goto_6

    :cond_13
    const-wide/16 v38, 0x0

    goto :goto_6

    :cond_14
    move/from16 v0, v35

    float-to-double v3, v0

    const-wide v5, 0x3fd3333333333333L

    mul-double/2addr v3, v5

    cmpg-double v3, v32, v3

    if-gez v3, :cond_15

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_3

    :cond_15
    move/from16 v0, v35

    float-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    cmpg-double v3, v32, v3

    if-gez v3, :cond_16

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_3

    :cond_16
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_STOP:I

    goto/16 :goto_3

    :pswitch_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float v13, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    add-float v14, v3, v4

    cmpl-double v3, v36, v38

    if-lez v3, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_1
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_2
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_17
    if-lez v22, :cond_18

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_18
    if-gez v22, :cond_9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float v13, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    add-float v14, v3, v4

    cmpl-double v3, v36, v38

    if-lez v3, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_4

    :pswitch_4
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_5
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_19
    if-lez v22, :cond_1a

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1a
    if-gez v22, :cond_9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_6
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    add-float v13, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float v14, v3, v4

    cmpl-double v3, v38, v36

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_4

    :pswitch_7
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_8
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1b
    if-gez v21, :cond_1c

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1c
    if-lez v21, :cond_9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_9
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    add-float v13, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float v14, v3, v4

    cmpl-double v3, v38, v36

    if-lez v3, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_4

    goto/16 :goto_4

    :pswitch_a
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_DOWN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_b
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_UP:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1d
    if-gez v21, :cond_1e

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_RIGHT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1e
    if-lez v21, :cond_9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEFT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isRectGuideVisible()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getFocusRectDistance()F

    move-result v3

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_20

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged not Warning mLeftTopX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLeftTopY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRightTopX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRightTopY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRightBottomX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLeftBottomX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLeftBottomY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideRectChanged not Warning mWidth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHeight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    new-array v0, v3, [F

    move-object/from16 v29, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    aput v4, v29, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    aput v4, v29, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    aput v4, v29, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    aput v4, v29, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    aput v4, v29, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    aput v4, v29, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    aput v4, v29, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    aput v4, v29, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v5, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setRect(FF[F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setVisibility(I)V

    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isMaxPositionReached(FF)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideShow:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_25

    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    :cond_22
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopLivePreviewHaptic()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_WIDESELFIE_BOUNDARY_LINE:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V

    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningText()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarning()V

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onUltraWideSelfieNextCapturePosition(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    const-string v3, "TwGLUltraWideShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraWideSelfieNextCapturePosition : posX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", posY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v3, p1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    int-to-float v3, p2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showNextCaptureFocusRect()V

    return-void

    :pswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v3, :cond_0

    move v1, v2

    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v3, :cond_1

    move v0, v2

    :goto_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectLeft:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectTop:F

    goto :goto_0

    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_LEFT_MARGIN:F

    goto :goto_2

    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterX:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectLeft:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectCenterY:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectTop:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUltraWideSelfieSingleCaptureDone()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isUltraWideShotCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUltraWideSelfieSingleCaptureDone invisible next capture mDetectedDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextCaptureFocusStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showStopButton()V

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LANDSCAPE_CAPTURE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LANDSCAPE_CAPTURE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PORTRATE_CAPTURE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PORTRATE_CAPTURE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_8

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v5, :cond_a

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v3, :cond_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    :cond_8
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->getGuideDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v4, :cond_8

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v3, :cond_b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v0, v4, :cond_8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUltraWideSelfieSingleCaptureNew()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "onUltraWideSelfieSingleCaptureNew"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isUltraWideShotCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->setUltraWideShotStartCapture(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startBlinkShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND:I

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setSkipCheckWarning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startBlinkShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND:I

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LANDSCAPE_CAPTURE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PORTRATE_CAPTURE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LANDSCAPE_CAPTURE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepareWarningArrow(I)V
    .locals 7
    .param p1    # I

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_LOW:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_LEVEL_HIGH:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopLivePreviewHaptic()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    goto :goto_0

    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotWarning:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopUltraWideShotSound()V

    goto :goto_0
.end method

.method public refreshBackgroundRect()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLBitmapTexture;->getRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->getCurrentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getCurrentLeft()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v3, :cond_3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getCurrentRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLBitmapTexture;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v3, :cond_7

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0
.end method

.method public refreshLivePreviewPosition()V
    .locals 12

    const/16 v11, 0x78

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "TwGLUltraWideShotMenu"

    const-string v7, "refreshLivePreviewPosition enter"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPlayHaptic:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x8

    new-array v4, v6, [F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    aput v6, v4, v9

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    aput v6, v4, v10

    const/4 v6, 0x2

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    aput v7, v4, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    aput v7, v4, v6

    const/4 v6, 0x4

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    aput v7, v4, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    aput v7, v4, v6

    const/4 v6, 0x6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    aput v7, v4, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    aput v7, v4, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    invoke-virtual {v6, v7, v8, v4}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setRect(FF[F)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/glwidget/TwGLTrapezoid;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideText(I)V

    :cond_3
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v6, :cond_4

    move v3, v5

    :goto_1
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v6, :cond_5

    move v1, v5

    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v6, v1

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v7, v3

    invoke-virtual {v5, v9, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v6, v1

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    add-float/2addr v6, v1

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_POS_X:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_POS_X:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_0

    :cond_4
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    :cond_5
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_LEFT_MARGIN:F

    goto :goto_2

    :pswitch_1
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v6, :cond_6

    move v2, v5

    :goto_3
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/16 v7, 0x96

    if-ne v6, v7, :cond_8

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->CAPTURE_ANGLE_MARGIN:F

    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setPortraitModePosition()V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    add-float/2addr v7, v2

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v6, v11, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->BACKGROUND_RECT_PORTRAIT_X:[F

    aget v7, v7, v9

    add-float/2addr v7, v2

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->BACKGROUND_RECT_PORTRAIT_Y:[F

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    :goto_5
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    add-float/2addr v7, v2

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v6, v11, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_X:[F

    aget v7, v7, v9

    sub-float v7, v5, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_Y:[F

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    :goto_6
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    if-ne v6, v11, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_X:[F

    aget v7, v7, v9

    sub-float/2addr v5, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_Y:[F

    aget v7, v7, v9

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isEasyMode()Z

    move-result v6

    if-eqz v6, :cond_7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_EASYMODE_PORTRAIT_MARGIN:F

    goto/16 :goto_3

    :cond_7
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_PORTRAIT_MARGIN:F

    goto/16 :goto_3

    :cond_8
    move v0, v5

    goto/16 :goto_4

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->BACKGROUND_RECT_PORTRAIT_X:[F

    aget v7, v7, v10

    sub-float v7, v5, v7

    add-float/2addr v7, v2

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->BACKGROUND_RECT_PORTRAIT_Y:[F

    aget v8, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_X:[F

    aget v7, v7, v10

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_Y:[F

    aget v8, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_X:[F

    aget v6, v6, v10

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_Y:[F

    aget v7, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetUltraWideShotCapturing()V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsUltraWideShotCapturing:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCapture:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCheckWarning:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mChanged:Z

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPostProgress:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mDetectedDirection:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentDirection:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevThumbnailHeight:F

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mEncodingProgress:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mMovingDetection:Z

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->clearUltraWideRect()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopUltraWideShotSound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopLivePreviewHaptic()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideState:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideStopButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setPreviewThumbnailSizeToDefault()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->resetTrapezoid()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetFocusRect()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_Y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_Y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restartCancelTimer()V
    .locals 2

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->startCancelTimer()V

    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForVirtualKey()V

    return-void
.end method

.method public setCaptureAngle(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setCaptureError(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureError:Z

    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased mCaptureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsUltraWideShotCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureCount:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setTouchHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDelayedSkipCapture()V
    .locals 4

    const/4 v3, 0x7

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "setDelayedSkipCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setSkipCapture(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setEncodingProgress(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mEncodingProgress:Z

    return-void
.end method

.method public setFocusRectLeftTop(FF)V
    .locals 5
    .param p1    # F
    .param p2    # F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPrevFocusRectCenterY:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v4, :cond_0

    move v2, v3

    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v4, :cond_1

    move v0, v3

    :goto_2
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    goto :goto_0

    :cond_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_LEFT_MARGIN:F

    goto :goto_2

    :pswitch_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v4, :cond_2

    move v1, v3

    :goto_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectLeft:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectTop:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isEasyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_EASYMODE_PORTRAIT_MARGIN:F

    goto :goto_3

    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHapticEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPlayHaptic:Z

    return-void
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnUltraWideShotCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$OnUltraWideShotCaptureCancelListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$OnUltraWideShotCaptureCancelListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$OnUltraWideShotCaptureCancelListener;

    return-void
.end method

.method public setPortraitModePosition()V
    .locals 3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/16 v2, 0x96

    if-ne v1, v2, :cond_0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->CAPTURE_ANGLE_MARGIN:F

    :goto_0
    const v1, 0x7f0a03da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_PORTRAIT_Y:F

    const v1, 0x7f0a03e4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v1, v0

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1    # I

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLUltraWideShotMenu"

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

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPostProgress:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideStopButton()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V
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

.method public setPreviewThumbnailLeftTop(FFFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailLeft:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailLeft:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailTop:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviewThumbnailSizeToDefault()V
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailWidth:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewThumbnailHeight:F

    return-void
.end method

.method public setSkipCapture(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCapture:Z

    return-void
.end method

.method public setSkipCheckWarning(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mSkipCheckWarning:Z

    return-void
.end method

.method public setStartCapture(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->setTouchHandled(Z)V

    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusStep:I

    return-void
.end method

.method public setTrapezoidPosition(FFFFFFFF)V
    .locals 6
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    const/high16 v5, 0x40000000

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "TwGLUltraWideShotMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusRectCenterX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFocusRectCenterY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mFocusRectCenterY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->FOCUS_RECT_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_2
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    goto/16 :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_2

    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    const/high16 v3, 0x41700000

    add-float v1, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_RATIO:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_4
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mHeight:F

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureAngleButton()V
    .locals 0

    return-void
.end method

.method public showGuideArrow(I)V
    .locals 11
    .param p1    # I

    const/high16 v10, 0x40000000

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideState:I

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideState:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_2

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_3

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000

    const/high16 v5, 0x3f800000

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p1, v8, :cond_4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v9, :cond_5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_5
    if-nez p1, :cond_0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mAnimationDirection:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideRect(I)V

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :pswitch_1
    if-ne p1, v8, :cond_8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    add-float v0, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_8
    if-ne p1, v9, :cond_9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    add-float v0, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_9
    if-nez p1, :cond_0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->ARROW_MARGIN:F

    add-float v0, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mAnimationDirection:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPreviewFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureFocusRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    const-string v3, "TwGLUltraWideShotMenu"

    const-string v4, "mCaptureFocusRect is INVISIBLE 1"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v2, 0x7

    :goto_2
    const/16 v3, 0xe

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    const/4 v2, 0x7

    :goto_3
    const/16 v3, 0xe

    if-ge v2, v3, :cond_d

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureAngle:I

    const/16 v4, 0x96

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->CAPTURE_ANGLE_MARGIN:F

    div-float/2addr v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_4

    :cond_d
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideRect(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showGuideRect(I)V
    .locals 3
    .param p1    # I

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mMovingDetection:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public showGuideText(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x5

    const/4 v3, 0x0

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mPostProgress:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c01c0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c01c1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showGuideArrow(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c01c2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showNextCaptureFocusRect()V
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextCaptureFocusRect left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isUltraWideShotCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectLeft:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRect:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectTop:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mNextCaptureFocusRectPort:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showPreviewGroup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "showPreviewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "showPreviewGroup, isMenuOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->refreshLivePreviewPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mBackgroundRectGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showStopButton()V
    .locals 2

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public showWarningArrow(FFI)V
    .locals 4
    .param p1    # F
    .param p2    # F
    .param p3    # I

    const/16 v2, 0xe

    const/4 v3, 0x4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->WARNING_NONE:I

    if-ne p3, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideRect:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    if-ne v0, p3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->hideGuideText()V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->showWarningText(I)V

    goto :goto_0
.end method

.method public showWarningText(I)V
    .locals 6
    .param p1    # I

    const v5, 0x7f0c01c9

    const v4, 0x7f0c01c8

    const v3, 0x7f0c01c7

    const v2, 0x7f0c01c6

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c01c5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public startCancelTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startGuideAnimation(I)V
    .locals 8
    .param p1    # I

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TwGLUltraWideShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGuideAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isMenuOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mIsStartCapture:Z

    if-eq v0, v4, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v6, :cond_7

    :cond_2
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v7, :cond_a

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-eq v0, v4, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCurrentOrientation:I

    if-ne v0, v7, :cond_0

    :cond_8
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_EASYMODE_GUIDE_PORTRAIT_MARGIN:F

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_EASYMODE_GUIDE_PORTRAIT_MARGIN:F

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->PREVIEW_EASYMODE_GUIDE_PORTRAIT_MARGIN:F

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideDirection:I

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mGuideOrient:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_2
.end method

.method public stopCancelTimer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "TwGLUltraWideShotMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public stopGuideAnimation()V
    .locals 4

    const/4 v3, 0x4

    const-string v1, "TwGLUltraWideShotMenu"

    const-string v2, "stopGuideAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mLeftGuideImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mCenterGuideImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mRightGuideImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopUltraWideShotSound()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mUltraWideShotMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUltraWideShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    :cond_2
    return-void
.end method
