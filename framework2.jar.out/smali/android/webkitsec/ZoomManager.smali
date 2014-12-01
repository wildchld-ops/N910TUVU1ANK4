.class Landroid/webkitsec/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/ZoomManager$PostScale;,
        Landroid/webkitsec/ZoomManager$ScaleDetectorListener;,
        Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final DEFAULT_MAX_EMAIL_ZOOM_SCALE_FACTOR:F = 1.25f

.field protected static final DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 4.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT_EMAIL:F = 0.0f

.field private static final PANNING_BLOCKING_TIME:J = 0x32L

.field private static final TILT_ZOOM_SCALE_FACTOR:I = 0x8c

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x96

.field private static final mBlockZoomPadding:I = 0x5

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private bIsReceiveActionPU:Z

.field private bIsReceiveMoveEVForZoom:Z

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mBlockZoomStartScale:F

.field private mBlockZoomStartScrollX:I

.field private mBlockZoomStartScrollY:I

.field private mBlockZoomTargetScale:F

.field private mBlockZoomTargetScrollX:I

.field private mBlockZoomTargetScrollY:I

.field private mBlockZooming:Z

.field private final mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mDefaultMaxEmailZoomScale:F

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapMaxScale:F

.field private mDoubleTapZoomFactor:F

.field private mDoubleTapZoomFactorEmail:F

.field private mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

.field private mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

.field private mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;

.field private mFocusX:F

.field private mFocusY:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field private mIsZooming:Z

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mStartTimePannigCheck:J

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field private mTiltListener:Landroid/webkitsec/TiltListener;

.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private motionListener:Landroid/hardware/motion/MRListener;

.field private registerTiltListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    const/high16 v0, 0x3f000000

    sput v0, Landroid/webkitsec/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    const/high16 v0, 0x3fc00000

    sput v0, Landroid/webkitsec/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT_EMAIL:F

    const v0, 0x3be56042

    sput v0, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/CallbackProxy;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactor:F

    const/high16 v0, 0x40000000

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactorEmail:F

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    const/high16 v0, 0x3fc00000

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    new-instance v0, Landroid/webkitsec/ZoomManager$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/ZoomManager$1;-><init>(Landroid/webkitsec/ZoomManager;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    iput-object p1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iput-object p2, p0, Landroid/webkitsec/ZoomManager;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->setZoomOverviewWidth(I)V

    new-instance v0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkitsec/ZoomManager;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$1002(Landroid/webkitsec/ZoomManager;F)F
    .locals 0

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mFocusX:F

    return p1
.end method

.method static synthetic access$1100(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$1102(Landroid/webkitsec/ZoomManager;F)F
    .locals 0

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$1200(Landroid/webkitsec/ZoomManager;)J
    .locals 2

    iget-wide v0, p0, Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J

    return-wide v0
.end method

.method static synthetic access$1202(Landroid/webkitsec/ZoomManager;J)J
    .locals 0

    iput-wide p1, p0, Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J

    return-wide p1
.end method

.method static synthetic access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/webkitsec/ZoomManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/webkitsec/ZoomManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1700()F
    .locals 1

    sget v0, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1802(Landroid/webkitsec/ZoomManager;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1900(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/webkitsec/ZoomManager;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2100(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2200(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$2300(Landroid/webkitsec/ZoomManager;FZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$400(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$500(Landroid/webkitsec/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    return v0
.end method

.method static synthetic access$602(Landroid/webkitsec/ZoomManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$702(Landroid/webkitsec/ZoomManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->mIsZooming:Z

    return p1
.end method

.method static synthetic access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method private animateBlockZoom(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x3f800000

    iget-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    :cond_0
    const/16 v1, 0x96

    const/4 v8, 0x1

    if-ge v1, v8, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    int-to-float v8, v0

    int-to-float v9, v1

    div-float v2, v8, v9

    cmpl-float v8, v2, v12

    if-lez v8, :cond_2

    const/high16 v2, 0x3f800000

    :cond_2
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScale:F

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScale:F

    mul-float/2addr v9, v2

    add-float v7, v8, v9

    iget v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollX:I

    int-to-float v8, v8

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v3, v8

    iget v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollY:I

    int-to-float v8, v8

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v4, v8

    if-ge v0, v1, :cond_6

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :goto_0
    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v8

    sub-int v5, v8, v3

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v8

    sub-int v6, v8, v4

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8, v3, v4}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    invoke-virtual {p0, v7, v13}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    if-nez v8, :cond_5

    iput-boolean v13, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8, v13}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    iput-boolean v13, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto :goto_0

    :cond_7
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkitsec/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/ZoomControlEmbedded;-><init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    if-nez v0, :cond_2

    new-instance v0, Landroid/webkitsec/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkitsec/ZoomControlExternal;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sanitizeMinMaxScales()V
    .locals 3

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMinZoom > mMaxZoom!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    :cond_0
    return-void
.end method

.method private setDefaultZoomScale(F)V
    .locals 6

    const-wide/16 v4, 0x0

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    const/high16 v2, 0x3f800000

    div-float/2addr v2, p1

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mInvDefaultScale:F

    const/high16 v2, 0x40800000

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    const/high16 v2, 0x3fa00000

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxEmailZoomScale:F

    const/high16 v2, 0x3e800000

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    float-to-double v2, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    div-float v2, p1, v0

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    :goto_0
    float-to-double v2, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    div-float v2, p1, v0

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    :goto_1
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    invoke-static {v2, v3}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.android.email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v2

    const v3, 0x249f0

    if-le v2, v3, :cond_2

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxEmailZoomScale:F

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    goto :goto_1
.end method

.method private setZoomOverviewWidth(I)V
    .locals 2

    if-nez p1, :cond_0

    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    :goto_0
    const/high16 v0, 0x3f800000

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInvZoomOverviewWidth:F

    return-void

    :cond_0
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0
.end method

.method private setZoomScale(FZZ)V
    .locals 17

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    :goto_1
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v13

    if-nez v13, :cond_0

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    cmpl-float v13, p1, v13

    if-nez v13, :cond_1

    if-eqz p3, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    cmpl-float v13, p1, v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Landroid/webkitsec/CallbackProxy;->onScaleChanged(FF)V

    :cond_2
    sget-boolean v13, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v13, :cond_3

    const-string v13, "ZoomManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setZoomScale mActualScale = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "scale = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mActualScale:F

    const/high16 v13, 0x3f800000

    div-float v13, v13, p1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    mul-float v8, p1, v3

    int-to-float v13, v5

    mul-float/2addr v13, v8

    const/high16 v14, 0x3f800000

    sub-float v14, v8, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    mul-float/2addr v14, v15

    add-float v11, v13, v14

    int-to-float v13, v6

    mul-float/2addr v13, v8

    const/high16 v14, 0x3f800000

    sub-float v14, v8, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float v12, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v13, v13, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v13}, Landroid/webkitsec/ViewManager;->scaleAll()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/webkitsec/WebViewClassic;->pinLocX(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/webkitsec/WebViewClassic;->pinLocY(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v13, "com.android.email"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mIsZooming:Z

    if-eqz v13, :cond_4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13, v9, v10}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    :cond_6
    return-void

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v13

    move/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private setupZoomOverviewWidth(Landroid/webkitsec/WebViewCore$DrawData;I)Z
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    sget v2, Landroid/webkitsec/WebViewClassic;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_2

    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->setZoomOverviewWidth(I)V

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    int-to-float v2, p2

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startSmoothZoomAnimation(ZZF)V
    .locals 31

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v30

    invoke-virtual/range {v27 .. v30}, Landroid/webkitsec/WebViewClassic;->getBlockRect(IIF)Landroid/graphics/Rect;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v27

    if-nez v27, :cond_1

    move/from16 v20, p3

    const/high16 v27, 0x3f800000

    mul-float v27, v27, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v28, v0

    div-float v21, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    move/from16 v28, v0

    add-float v27, v27, v28

    mul-float v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v20

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v28

    add-int v23, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    mul-float v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    :goto_0
    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v28

    add-int v24, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScale:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    sub-int v27, v27, v23

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    sub-int v27, v27, v24

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    :goto_1
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return-void

    :cond_0
    sub-int v27, v24, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v20

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static/range {v27 .. v29}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v27

    add-int v27, v27, v22

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v25, v0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    if-nez p2, :cond_b

    add-int/lit8 v27, v8, 0xa

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v20, v26, v27

    cmpl-float v27, v20, v17

    if-lez v27, :cond_9

    move/from16 v20, v17

    :cond_2
    :goto_3
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000

    div-float v4, v27, v28

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000

    div-float v5, v27, v28

    div-float v16, v26, v20

    div-float v15, v25, v20

    if-nez p2, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v27, v15, v27

    if-gez v27, :cond_4

    add-int/lit8 v27, v6, 0xa

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v20, v25, v27

    cmpl-float v27, v20, v17

    if-lez v27, :cond_c

    move/from16 v20, v17

    :cond_3
    :goto_4
    div-float v16, v26, v20

    div-float v15, v25, v20

    :cond_4
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/high16 v27, 0x40000000

    div-float v27, v16, v27

    sub-float v27, v4, v27

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->left:F

    const/high16 v27, 0x40000000

    div-float v27, v15, v27

    sub-float v27, v5, v27

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->top:F

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    add-float v27, v27, v16

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->right:F

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    add-float v27, v27, v15

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v14, v27, v20

    const/4 v11, 0x0

    neg-float v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v10, v0

    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v18, v27, v9

    const/16 v27, 0x0

    cmpl-float v27, v18, v27

    if-lez v27, :cond_5

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v19, v27, v10

    const/16 v27, 0x0

    cmpl-float v27, v19, v27

    if-lez v27, :cond_6

    const/16 v27, 0x0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_6
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpg-float v27, v27, v11

    if-gez v27, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v27, v11, v27

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_7
    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpg-float v27, v27, v12

    if-gez v27, :cond_8

    const/16 v27, 0x0

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    sub-float v28, v12, v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScale:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollY:I

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    mul-float v27, v27, v20

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    mul-float v27, v27, v20

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gtz v27, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    move/from16 v20, p3

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gez v27, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v20, v0

    goto/16 :goto_3

    :cond_b
    move/from16 v20, p3

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gtz v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    move/from16 v20, p3

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gez v27, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v20, v0

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    goto/16 :goto_2
.end method

.method private zoom(F)Z
    .locals 4

    const/high16 v2, 0x3f000000

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/webkitsec/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    goto :goto_0
.end method

.method private zoomToOverview()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v5, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {p0, v4, v2}, Landroid/webkitsec/ZoomManager;->startZoomAnimation(FZ)Z

    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Landroid/webkitsec/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    goto :goto_1
.end method

.method private zoomToReadingLevelOrMore()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v1

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    iget v7, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    invoke-virtual {v3, v6, v7, v1}, Landroid/webkitsec/WebViewClassic;->getBlockLeftEdge(IIF)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    sub-int v2, v3, v6

    if-lez v2, :cond_3

    int-to-float v3, v2

    mul-float/2addr v3, v1

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float v6, v1, v6

    div-float/2addr v3, v6

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p0, v1, v4}, Landroid/webkitsec/ZoomManager;->startZoomAnimation(FZ)Z

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v3, v0, -0x5

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->scrollBy(II)V

    const/4 v3, 0x0

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-direct {p0, v5, v4, v1}, Landroid/webkitsec/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    goto :goto_2

    :cond_5
    move v5, v4

    goto :goto_3
.end method


# virtual methods
.method public GetIsActionPU()Z
    .locals 3

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetIsActionPU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    return v0
.end method

.method public SetIsActionPU(Z)V
    .locals 3

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIsActionPU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mIsZooming:Z

    :cond_1
    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    return-void
.end method

.method public animateZoom(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    if-eqz v8, :cond_1

    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager;->animateBlockZoom(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    cmpl-float v8, v8, v13

    if-nez v8, :cond_2

    const-string/jumbo v8, "webviewZoom"

    const-string v9, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    goto :goto_0

    :cond_2
    iget-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    const/16 v8, 0x96

    if-ge v0, v8, :cond_4

    int-to-float v8, v0

    const/high16 v9, 0x43160000

    div-float v2, v8, v9

    const/high16 v8, 0x3f800000

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    iget v10, p0, Landroid/webkitsec/ZoomManager;->mInvFinalZoomScale:F

    iget v11, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    div-float v7, v8, v9

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :goto_1
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    mul-float v3, v7, v8

    iget v8, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollX:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v8

    neg-int v8, v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v9

    add-int v5, v8, v9

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v4

    iget v8, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollY:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    add-float/2addr v8, v9

    int-to-float v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    int-to-float v10, v4

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v8, "com.android.email"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    neg-int v8, v6

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v9

    add-int v6, v8, v9

    :goto_2
    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v9

    sub-int/2addr v9, v5

    iget-object v10, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v7, v12}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    iget v8, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    cmpl-float v8, v8, v13

    if-nez v8, :cond_0

    iput-boolean v12, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8, v12}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    goto/16 :goto_0

    :cond_4
    iget v7, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    iput v13, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_1

    :cond_5
    if-gt v6, v4, :cond_6

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_3
    neg-int v8, v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v9

    add-int v6, v8, v9

    goto :goto_2

    :cond_6
    sub-int v8, v6, v4

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v9

    iget-object v10, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v8

    add-int/2addr v8, v4

    goto :goto_3

    :cond_7
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_0
.end method

.method public final canZoomIn()Z
    .locals 2

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canZoomOut()Z
    .locals 2

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clearDocumentAnchor()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    return-void
.end method

.method final computeReadingLevelScale(F)F
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    const/high16 v2, 0x3fc00000

    mul-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mDisplayDensity:F

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v1, v2

    sget v2, Landroid/webkitsec/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method public final computeScaleWithLimits(F)F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget p1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public dismissZoomPicker()V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->hide()V

    :cond_0
    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public final getDocumentAnchorX()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomControlExternal;->getControls()Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandleMoveEvForZooming()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    return v0
.end method

.method public final getInvDefaultScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method public final getMaxZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public getMouseWheelListener()Landroid/webkitsec/MouseWheelListener;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    return-object v0
.end method

.method public final getReadingLevelScale()F
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v0

    return v0
.end method

.method public getRegisterTiltListener()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->registerTiltListener:Z

    return v0
.end method

.method public final getScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    return v0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getTextWrapScale()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method public getTiltListener()Landroid/webkitsec/TiltListener;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    return-object v0
.end method

.method getZoomOverviewScale()F
    .locals 5

    const/high16 v2, 0x3f800000

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "com.android.email"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isDoubleTapEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    const/high16 v4, 0x40000000

    div-float v1, v3, v4

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float v1, v2, v3

    goto :goto_0
.end method

.method public handleDoubleTap(FF)V
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isDoubleTapEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "ZoomManager"

    const-string v5, "handleDoubleTap start "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    float-to-int v5, p1

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v4

    iput v4, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    float-to-int v5, p2

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v4

    iput v4, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    invoke-virtual {v2, v0}, Landroid/webkitsec/WebSettingsClassic;->setDoubleTapToastCount(I)V

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_1
    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iget v5, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v4, v5}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v4, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-eqz v4, :cond_5

    :cond_4
    iput v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    :cond_5
    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v4, v1}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    iget-boolean v4, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_7

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v3}, Landroid/webkitsec/ZoomManager;->refreshZoomScale(Z)V

    :goto_2
    sget-boolean v3, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZoomManager"

    const-string v4, "handleDoubleTap END "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    goto :goto_1

    :cond_7
    iget-boolean v4, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_9

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v4

    iput v4, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v3}, Landroid/webkitsec/ZoomManager;->refreshZoomScale(Z)V

    :cond_8
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->zoomToOverview()V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->zoomToReadingLevelOrMore()V

    goto :goto_2
.end method

.method public init(F)V
    .locals 1

    sget-boolean v0, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mDisplayDensity:F

    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager;->setDefaultZoomScale(F)V

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    const/high16 v0, 0x3f800000

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->show()V

    :cond_0
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedLengthAnimationInProgress()Z
    .locals 2

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZoomOverview()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public final isScaleOverLimits(F)Z
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimating()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomPickerVisible()Z
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomScaleFixed()Z
    .locals 2

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepZoomPickerVisible()V
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->show()V

    :cond_0
    return-void
.end method

.method public onFirstLayout(Landroid/webkitsec/WebViewCore$DrawData;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    sget-boolean v6, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    sget-boolean v6, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    iget-object v5, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v4, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/webkitsec/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v5, v6, v8}, Landroid/webkitsec/ZoomManager;->updateZoomRange(Landroid/webkitsec/WebViewCore$ViewState;II)V

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/webkitsec/ZoomManager;->setupZoomOverviewWidth(Landroid/webkitsec/WebViewCore$DrawData;I)Z

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    iget-boolean v6, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_9

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    iput v6, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    iget v8, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    :cond_4
    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v6

    if-nez v6, :cond_8

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    :cond_5
    :goto_1
    const/4 v1, 0x0

    iget-boolean v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_7

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    :cond_6
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v2}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    :cond_7
    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v2, v0}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    invoke-virtual {p0, v2, v1}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->updateZoomPicker()V

    invoke-virtual {p0, v7}, Landroid/webkitsec/ZoomManager;->setEdgeZoom(Z)V

    :cond_8
    return-void

    :cond_9
    move v6, v0

    goto :goto_0

    :cond_a
    iget-boolean v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_b

    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_e

    :cond_b
    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    iget v2, v5, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    :goto_3
    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_d

    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_4
    iput v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    :cond_c
    move v2, v0

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v6

    goto :goto_4

    :cond_e
    move v2, v0

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_10
    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_1

    :cond_11
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onNewPicture(Landroid/webkitsec/WebViewCore$DrawData;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v5

    invoke-direct {p0, p1, v5}, Landroid/webkitsec/ZoomManager;->setupZoomOverviewWidth(Landroid/webkitsec/WebViewCore$DrawData;I)Z

    move-result v6

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_2

    :cond_0
    iget v9, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    :cond_2
    :goto_0
    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    :cond_4
    iget v9, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    move v3, v7

    :goto_1
    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_b

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_b

    move v0, v7

    :goto_2
    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_5
    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_6

    if-eqz v0, :cond_d

    :cond_6
    if-eqz v2, :cond_d

    if-eqz v6, :cond_d

    :cond_7
    iput-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_c

    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    :goto_4
    iget-boolean v7, p1, Landroid/webkitsec/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    :cond_8
    return v2

    :cond_9
    iput v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    goto :goto_0

    :cond_a
    move v3, v8

    goto :goto_1

    :cond_b
    move v0, v8

    goto :goto_2

    :cond_c
    move v7, v8

    goto :goto_3

    :cond_d
    if-nez v2, :cond_e

    :goto_5
    iput-boolean v7, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    goto :goto_4

    :cond_e
    move v7, v8

    goto :goto_5
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeight()I

    move-result v0

    iput v6, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    int-to-float v1, v0

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    :cond_0
    iget-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_2

    const/high16 v4, 0x3f800000

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getHistoryPictureWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    new-instance v5, Landroid/webkitsec/ZoomManager$PostScale;

    if-eq p1, p3, :cond_5

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iget-boolean v6, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_6

    :goto_2
    invoke-direct {v5, p0, v1, v6, v2}, Landroid/webkitsec/ZoomManager$PostScale;-><init>(Landroid/webkitsec/ZoomManager;ZZZ)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method public refreshZoomScale(Z)V
    .locals 2

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method public registerTiltListener()V
    .locals 3

    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->registerTiltListener:Z

    :cond_0
    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .locals 2

    const/high16 v1, 0x3f800000

    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultEmailZoomScale()V
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxEmailZoomScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    return-void
.end method

.method setEdgeZoom(Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    const-string/jumbo v6, "setEnableEdgeZoom"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->canZoomIn()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->canZoomOut()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v4, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "ZoomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFirstLayout  e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHandleMoveEvForZooming(Z)V
    .locals 3

    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleMoveEvForZooming= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    return-void
.end method

.method public setHardwareAccelerated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .locals 2

    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    return-void
.end method

.method public final setZoomCenter(FF)V
    .locals 0

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    iput p2, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    return-void
.end method

.method public setZoomScale(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method public startZoomAnimation(FZ)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000

    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollX:I

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollY:I

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v3

    invoke-static {p1, v3}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    iget-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    div-float v2, v4, v0

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    div-float v2, v4, v2

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mInvFinalZoomScale:F

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public supportsMultiTouchZoom()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public unregisterTiltListener()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    invoke-virtual {v0, v2}, Landroid/webkitsec/TiltListener;->setTiltUse(Z)V

    :cond_0
    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->registerTiltListener:Z

    :cond_1
    return-void
.end method

.method public updateDefaultZoomDensity(F)V
    .locals 6

    sget-boolean v2, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    iput p1, p0, Landroid/webkitsec/ZoomManager;->mDisplayDensity:F

    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager;->setDefaultZoomScale(F)V

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    div-float v1, p1, v0

    :goto_0
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    :cond_1
    return-void

    :cond_2
    const/high16 v1, 0x3f800000

    goto :goto_0
.end method

.method public updateDoubleTapZoom(I)V
    .locals 5

    const/4 v2, 0x1

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    :goto_0
    int-to-float v3, p1

    const/high16 v4, 0x42c80000

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactor:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    if-eqz v1, :cond_1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    :goto_1
    invoke-direct {p0, v0, v2, v2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-boolean v3, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->supportZoom()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    const-string v3, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    iput-boolean v5, p0, Landroid/webkitsec/ZoomManager;->mAllowPanAndScale:Z

    iget-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v3, :cond_6

    new-instance v0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;

    invoke-direct {v0, p0, v6}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/ZoomManager$1;)V

    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/webkitsec/TiltListener;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0, v4}, Landroid/webkitsec/TiltListener;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V

    iput-object v3, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    new-instance v3, Landroid/webkitsec/MouseWheelListener;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0, v4}, Landroid/webkitsec/MouseWheelListener;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V

    iput-object v3, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    sget-object v3, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v3, :cond_4

    const-string/jumbo v3, "motion_recognition"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v3, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    iget-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v3, :cond_4

    iput-object v6, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    iput-object v6, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    iput-object v6, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    goto :goto_1
.end method

.method public updateZoomPicker()V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->update()V

    :cond_0
    return-void
.end method

.method public updateZoomRange(Landroid/webkitsec/WebViewCore$ViewState;II)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v1, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget-boolean v1, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v1, :cond_1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p3, v1, :cond_0

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    :goto_0
    iget v1, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v1

    const v2, 0x249f0

    if-le v1, v2, :cond_3

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxEmailZoomScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    return-void

    :cond_0
    iget v1, p1, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_1

    :cond_4
    iget v1, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_1
.end method

.method public willScaleTriggerZoom(F)Z
    .locals 1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    const/high16 v0, 0x3fa00000

    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method
