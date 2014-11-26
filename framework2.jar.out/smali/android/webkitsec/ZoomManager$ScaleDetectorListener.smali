.class Landroid/webkitsec/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkitsec/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkitsec/ZoomManager;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/ZoomManager$1;)V
    .locals 0
    .param p1    # Landroid/webkitsec/ZoomManager;
    .param p2    # Landroid/webkitsec/ZoomManager$1;

    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkitsec/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .param p1    # Landroid/view/ScaleGestureDetector;

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v4, v4, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v4, v4, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    invoke-interface {v4, p1, v5}, Landroid/webkitsec/PinchZoomListener;->handleScale(Landroid/view/ScaleGestureDetector;F)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZoomManager"

    const-string v4, "handleScale mWebView.mPinchZoomListener.handleScale FALSE"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getCurrTilt()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x430c0000

    div-float/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    add-float v1, v4, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    const/high16 v5, 0x3f800000

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f7cac083126e979L

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    const-string/jumbo v4, "tilt"

    const-string/jumbo v5, "setTiltUse(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkitsec/TiltListener;->setTiltUse(Z)V

    :cond_2
    :goto_1
    const-string/jumbo v4, "tilt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detector.getTiltUse() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mActualScale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "tilt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getCurrTilt() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/TiltListener;->getCurrTilt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getScaleFactor() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->getCurrDockZoom()F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->getCurrDockZoom()F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    mul-float v1, v4, v5

    :cond_3
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->isScaleOverLimits(F)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_8

    :cond_4
    move v0, v3

    :goto_2
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1600(Landroid/webkitsec/ZoomManager;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_5
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # setter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4, v3}, Landroid/webkitsec/ZoomManager;->access$1602(Landroid/webkitsec/ZoomManager;Z)Z

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_9

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    const/high16 v5, 0x3fa00000

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_3
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v1

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    # getter for: Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F
    invoke-static {}, Landroid/webkitsec/ZoomManager;->access$1700()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_6

    const-string v2, "ZoomManager"

    const-string v3, "handleScale return isScaleLimited !! Changed scale is too small"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v3, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    mul-float v1, v4, v5

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    :cond_a
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->getCurrDockZoom()F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->initCurrDockZoom()V

    :goto_4
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1, v2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkitsec/WebViewClassic;->setZoomScaleBegin(Z)V

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getHandleMoveEvForZooming()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v2}, Landroid/webkitsec/ZoomManager;->setHandleMoveEvForZooming(Z)V

    :goto_5
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleScale return TRUE!! mFocusX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocusY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    goto :goto_4

    :cond_d
    const-string v2, "ZoomManager"

    const-string v4, "Invalidate is not called because previous invalidate is not handled"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_f

    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScale return isScaleLimited = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v3, v0

    goto/16 :goto_0
.end method

.method public isPanningOnly(Landroid/view/ScaleGestureDetector;)Z
    .locals 12
    .param p1    # Landroid/view/ScaleGestureDetector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v9

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v8, v9}, Landroid/webkitsec/ZoomManager;->access$1002(Landroid/webkitsec/ZoomManager;F)F

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v9

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v8, v9}, Landroid/webkitsec/ZoomManager;->access$1102(Landroid/webkitsec/ZoomManager;F)F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1200(Landroid/webkitsec/ZoomManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    # setter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8, v9, v10}, Landroid/webkitsec/ZoomManager;->access$1202(Landroid/webkitsec/ZoomManager;J)J

    :cond_0
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1200(Landroid/webkitsec/ZoomManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x32

    add-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-ltz v8, :cond_1

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    sget-boolean v7, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v7, :cond_2

    const-string v7, "ZoomManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPanningOnly just return because of PANNING_BLOCKING_TIME / Tilt Use = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v9}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v6

    :cond_3
    cmpl-float v8, v4, v7

    if-nez v8, :cond_5

    cmpl-float v8, v5, v7

    if-nez v8, :cond_5

    move v3, v7

    :goto_1
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v8

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v8, v3}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$1300(Landroid/webkitsec/ZoomManager$FocusMovementQueue;F)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v2, v8, v9

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v8

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$1400(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    const/4 v6, 0x1

    :cond_4
    if-eqz v6, :cond_6

    iget v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v7, v2

    iput v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    :goto_2
    sget-boolean v7, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v7, :cond_2

    const-string v7, "ZoomManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPanningOnly result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v8

    sub-float/2addr v8, v4

    iget-object v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v9}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v9

    sub-float/2addr v9, v4

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v9}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v9

    sub-float/2addr v9, v5

    iget-object v10, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v10}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v10

    sub-float/2addr v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    goto :goto_1

    :cond_6
    iput v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_2
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1    # Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, p1}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v0

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$900(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)V

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScale return TRUE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScale return FALSE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1    # Landroid/view/ScaleGestureDetector;

    const/4 v4, 0x1

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScaleBegin enter!! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMinZoomScale:F
    invoke-static {v1}, Landroid/webkitsec/ZoomManager;->access$300(Landroid/webkitsec/ZoomManager;)F

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$400(Landroid/webkitsec/ZoomManager;)F

    move-result v2

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/webkitsec/PinchZoomListener;->onScaleBegin(FFF)Z

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z
    invoke-static {v0, v1}, Landroid/webkitsec/ZoomManager;->access$602(Landroid/webkitsec/ZoomManager;Z)Z

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # setter for: Landroid/webkitsec/ZoomManager;->mIsZooming:Z
    invoke-static {v0, v4}, Landroid/webkitsec/ZoomManager;->access$702(Landroid/webkitsec/ZoomManager;Z)Z

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v0

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$900(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)V

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v0, v1}, Landroid/webkitsec/ZoomManager;->access$1002(Landroid/webkitsec/ZoomManager;F)F

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v0, v1}, Landroid/webkitsec/ZoomManager;->access$1102(Landroid/webkitsec/ZoomManager;F)F

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkitsec/WebViewClassic;->setZoomScaleBegin(Z)V

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v0}, Landroid/webkitsec/ViewManager;->startZoom()V

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->onPinchToZoomAnimationStart()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    const-wide/16 v1, 0x0

    # setter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v0, v1, v2}, Landroid/webkitsec/ZoomManager;->access$1202(Landroid/webkitsec/ZoomManager;J)J

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScaleBegin end!! mFocusX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mFocusY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ScaleFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9
    .param p1    # Landroid/view/ScaleGestureDetector;

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v3

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v3

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    invoke-interface {v3, p1}, Landroid/webkitsec/PinchZoomListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$1600(Landroid/webkitsec/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # setter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3, v1}, Landroid/webkitsec/ZoomManager;->access$1602(Landroid/webkitsec/ZoomManager;Z)Z

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mZoomCenterX:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$1900(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v4

    # setter for: Landroid/webkitsec/ZoomManager;->mAnchorX:I
    invoke-static {v3, v4}, Landroid/webkitsec/ZoomManager;->access$1802(Landroid/webkitsec/ZoomManager;I)I

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mZoomCenterY:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$2100(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v4

    # setter for: Landroid/webkitsec/ZoomManager;->mAnchorY:I
    invoke-static {v3, v4}, Landroid/webkitsec/ZoomManager;->access$2002(Landroid/webkitsec/ZoomManager;I)I

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    iget-object v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTextWrapScale:F
    invoke-static {v7}, Landroid/webkitsec/ZoomManager;->access$2200(Landroid/webkitsec/ZoomManager;)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_2
    invoke-virtual {v3, v2}, Landroid/webkitsec/ZoomManager;->refreshZoomScale(Z)V

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_5
    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v2}, Landroid/webkitsec/ViewManager;->endZoom()V

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkitsec/WebViewClassic;->onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->unregisterTiltListener()V

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkitsec/TiltListener;->setTiltUse(Z)V

    iget-object v1, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    const-wide/16 v2, 0x0

    # setter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v1, v2, v3}, Landroid/webkitsec/ZoomManager;->access$1202(Landroid/webkitsec/ZoomManager;J)J

    sget-boolean v1, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZoomManager"

    const-string/jumbo v2, "onScaleEnd !!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2
.end method
