.class public Landroid/webkitsec/MouseWheelListener;
.super Ljava/lang/Object;
.source "MouseWheelListener.java"


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "SecMotionGestureDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrDockZoom:F

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mDetector:Landroid/view/ScaleGestureDetector;

.field private mDockZoomUse:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field private mTimeDelta:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/MouseWheelListener;->mDockZoomUse:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/MouseWheelListener;->mCurrDockZoom:F

    iput-object p1, p0, Landroid/webkitsec/MouseWheelListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/webkitsec/MouseWheelListener;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iput-object p3, p0, Landroid/webkitsec/MouseWheelListener;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public getCurrDockZoom()F
    .locals 1

    iget v0, p0, Landroid/webkitsec/MouseWheelListener;->mCurrDockZoom:F

    return v0
.end method

.method public initCurrDockZoom()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/MouseWheelListener;->mCurrDockZoom:F

    return-void
.end method

.method public onDockZoomEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x40400000

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/MouseWheelListener;->mCurrDockZoom:F

    iget v1, p0, Landroid/webkitsec/MouseWheelListener;->mCurrDockZoom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/MouseWheelListener;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iget-object v2, p0, Landroid/webkitsec/MouseWheelListener;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v1, v2}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    :cond_0
    return-void
.end method
